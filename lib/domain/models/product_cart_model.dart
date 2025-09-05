import 'product_model.dart';

class ProductCart {
  final Product product;
  final int amount;

  ProductCart({
    required this.product,
    required this.amount,
  });

  ProductCart copyWith({
    Product? product,
    int? amount,
  }) => ProductCart(
    product: product ?? this.product,
    amount: amount ?? this.amount,
  );
}

