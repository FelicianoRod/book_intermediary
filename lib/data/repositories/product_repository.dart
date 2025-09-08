import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/product_model.dart';
import '../../utils/connectivity.dart';
import '../../utils/to_model_product.dart';
import '../services/obbox/product_service_obbox.dart';
import '../services/product_service.dart';

part 'product_repository.g.dart';

@riverpod
Future<List<Product>> getProductsRep(GetProductsRepRef ref) async {
  try {
    if (await hasConnection()) {
      final productsList = await ref.watch(getProductsSerProvider.future);

      return productsList;
    } else {
      final productsList = await ref.watch(getProductsServiceObboxProvider.future);

      return productsList.map(toModel).toList();
    }
  } catch (e) {
    return [];
  }
}