import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servicio_sobriedad_plenitud/ui/products/viewmodel/products_viewmodel.dart';

import 'custom_list_tile.dart' show CustomListTile;

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsViewmodelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
      ),
      body: productsAsync.when(
        data: (products) => ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) => CustomListTile(
            code: products[i].code,
            title: products[i].name,
            category: products[i].category,
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Error: $err")),
      ),
    );
  }
}