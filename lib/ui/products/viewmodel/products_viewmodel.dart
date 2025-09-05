import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/product_repository.dart';
import '../../../data/services/objectbox/objectbox.dart';
import '../../../domain/models/product_model.dart';

part 'products_viewmodel.g.dart';

@riverpod
class ProductsViewmodel extends _$ProductsViewmodel {
  // late ProductRepository _productsRepository;

  @override
  FutureOr<List<Product>> build() async {
    // final service = await ObjectBox.getInstanceOrCreate();
    // _productsRepository = ProductRepository(service);

    // return _productsRepository.getProducts();
    final productsList = await ref.watch(getProductsRepProvider.future);
    return productsList;
  }
}