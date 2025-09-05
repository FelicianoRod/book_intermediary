import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/product_model.dart';
import '../viewmodel/sell_viewmodel.dart';

class ProductListTile extends ConsumerWidget {
  final Product product;

  const ProductListTile({
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shoppingCart = ref.read(shoppingCartProvider.notifier);

    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.category),
      onTap: () => shoppingCart.addToCart(product),
      trailing: Icon(Icons.plus_one),
    );
  }
}