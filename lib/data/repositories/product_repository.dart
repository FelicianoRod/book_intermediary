import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/product_model.dart';
import '../entities/product_entity.dart';
import '../providers/objectbox_provider.dart';
import '../services/objectbox/objectbox.dart';
import '../services/product_service.dart';

part 'product_repository.g.dart';
//
// class ProductRepository {
//   final ObjectBox _db;
//
//   ProductRepository(this._db);
//
//   Product toModel(ProductEntity entity) {
//     return Product(
//       id: entity.id,
//       code: entity.code,
//       name: entity.title,
//       category: entity.category,
//       donation: entity.donation,
//     );
//   }
//
//   ProductEntity toEntity(Product product) {
//     return ProductEntity(
//       id: product.id,
//       code: product.code,
//       title: product.name,
//       category: product.category,
//       donation: product.donation,
//     );
//   }
//
//   // List<ProductEntity> fetchProducts() => _db.getAllProducts();
//
//   List<Product> getProducts() {
//     final products = _db.getAllProducts();
//     return products.map(toModel).toList();
//   }
// }

// final productRespository = Provider((ref) => ProductRepository());

// @riverpod
// class ProductRepository extends _$ProductRepository {
//   @override
//   List<Product> build() {
//     return [];
//   }
//
//   Product toModel(ProductEntity entity) {
//     return Product(
//       id: entity.id,
//       code: entity.code,
//       name: entity.title,
//       category: entity.category,
//       donation: entity.donation,
//     );
//   }
//
//   ProductEntity toEntity(Product product) {
//     return ProductEntity(
//       id: product.id,
//       code: product.code,
//       title: product.name,
//       category: product.category,
//       donation: product.donation,
//     );
//   }
//
//   getProducts() {
//     final products = ref.watch(getAllProductProvider);
//   }
// }

  Product toModel(ProductEntity entity) {
    return Product(
      id: entity.id,
      code: entity.code,
      name: entity.title,
      category: entity.category,
      donation: entity.donation,
    );
  }

  ProductEntity toEntity(Product product) {
    return ProductEntity(
      id: product.id,
      code: product.code,
      title: product.name,
      category: product.category,
      donation: product.donation,
    );
  }

@riverpod
Future<List<Product>> getProductsRep(GetProductsRepRef ref) async {
  final productsList = await ref.watch(getProductsSerProvider.future);
  return productsList.map(toModel).toList();
}