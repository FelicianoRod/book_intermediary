import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/product_entity.dart';
import '../providers/objectbox_provider.dart';

part 'product_service.g.dart';

@riverpod
Future<List<ProductEntity>> getProductsSer(GetProductsSerRef ref) async {
  final store = await ref.watch(storeObjectboxProvider.future);
  final productBox = store.box<ProductEntity>();
  return productBox.getAll();
}