import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/sell_viewmodel.dart';
import 'cart_list_tile.dart';
import 'product_list_tile.dart';

class SellScreen extends ConsumerWidget {
  const SellScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formGlobalKey = GlobalKey<FormState>();
    final customers = ref.watch(customersListProvider);
    final selectedCustomer = ref.watch(selectedCustomerProvider);
    final selectCustomer = ref.read(selectedCustomerProvider.notifier);

    final productsList = ref.watch(productsListProvider);
    final shoppingCart = ref.watch(shoppingCartProvider);
    final shoppingCartNotifier = ref.read(shoppingCartProvider.notifier);

    final cartPurchaseVM = ref.read(cartPurchaseViewModelProvider.notifier);

    final advancePayment = ref.watch(advancePaymentProvider);
    final advancePaymentNotifier = ref.watch(advancePaymentProvider.notifier);


    return Scaffold(
      appBar: AppBar(
        title: Text("Pedido"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Form(
                  key: _formGlobalKey,
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        value: selectedCustomer,
                        decoration: const InputDecoration(
                          label: Text('Cliente'),
                        ),
                        items: customers.map((customer) {
                          return DropdownMenuItem(
                            value: customer,
                            child: Text(customer.name),
                          );
                        }).toList(),
                        onChanged: (value) {
                          selectCustomer.selectCustomer(value!);
                        }
                      ),
                      TextFormField(
                        controller: advancePaymentNotifier.controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Pago adelantado",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(cartPurchaseViewModelProvider.notifier).cartPurchase();
                        },
                        style: ElevatedButton.styleFrom(

                        ),
                        child: const Text("Realizar compra")
                      ),
                      Text(""),
                    ]
                  )
                )
              ]
            )
          ),
          Expanded(
            child: Column(
              children: [
                Text("Carrito"),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: shoppingCart.length,
                    itemBuilder: (context, index) {

                      return CartListTile(
                        productCart: shoppingCart[index],
                      );
                    }
                  ),
                ),
                Text("Productos disponibles"),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: productsList.length,
                    itemBuilder: (context, index) {

                      return ProductListTile(
                        product: productsList[index],
                      );
                    }
                  ),
                )
              ]
            )
          ),
        ],
      ),
    );
  }
}
