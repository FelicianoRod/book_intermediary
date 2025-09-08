import '../data/entities/product_entity.dart';
import '../domain/models/product_model.dart';

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