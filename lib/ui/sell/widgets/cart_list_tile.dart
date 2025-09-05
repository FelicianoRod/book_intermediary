import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/product_cart_model.dart';
import '../viewmodel/sell_viewmodel.dart';

class CartListTile extends ConsumerWidget {
  final ProductCart productCart;

  const CartListTile({
    required this.productCart,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shoppingCartNotifier = ref.read(shoppingCartProvider.notifier);

    return ListTile(
      title: Text(productCart.product.name),
      subtitle: Text(productCart.product.category),
      // trailing: Text("Cantidad: ${productCart.amount}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Cantidad: ${productCart.amount}"),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              shoppingCartNotifier.addOne(productCart);
            }
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              shoppingCartNotifier.removeOne(productCart);
            }
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              shoppingCartNotifier.deleteItem(productCart);
            }
          )
        ]
      )
    );
  }
}