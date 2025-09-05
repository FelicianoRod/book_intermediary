import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servicio_sobriedad_plenitud/ui/sell/viewmodel/sell_viewmodel.dart';

class SuccessfulPurchasedScreen extends ConsumerWidget {
  const SuccessfulPurchasedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartShopping = ref.watch(cartPurchaseViewModelProvider).value;

    return Scaffold(
      body: Column(
        children: [
          Text("Compra realizada exitosamente"),
          // Text(cartShopping?.customer.name ?? "Error con el comprador"),
        ]
      )
    );
  }

}