import 'bulk_sale_model.dart';
import 'product_model.dart';

class SingleSale {
  final int id;
  final int amount;
  final Product product;
  // final BulkSale bulkSale;

  SingleSale({
    required this.id,
    required this.amount,
    required this.product,
    // required this.bulkSale,
  });

  factory SingleSale.fromJson(Map<String, dynamic> json) => SingleSale(
    id: json['id'] as int,
    amount: json['amount'] as int,
    product: Product.fromJson(json['product']),
    // bulkSale: BulkSale.fromJson(json['bulkSale']),
  );
}