import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../entities/product_entity.dart';
import '../../providers/objectbox_provider.dart';

part 'product_service_obbox.g.dart';

@riverpod
Future<List<ProductEntity>> getProductsServiceObbox(GetProductsServiceObboxRef ref) async {
  final store = await ref.watch(storeObjectboxProvider.future);
  final productBox = store.box<ProductEntity>();
  return productBox.getAll();
}