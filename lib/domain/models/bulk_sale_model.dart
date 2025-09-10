import 'customer_model.dart';
import 'sale_status_model.dart';

class BulkSale {
  final int id;
  final double amountPaid;
  final Customer customer;
  final SaleStatus status;

  BulkSale({
    required this.id,
    required this.amountPaid,
    required this.customer,
    required this.status,
});

  factory BulkSale.fromJson(Map<String, dynamic> json) => BulkSale(
    id: json['id'] as int,
    amountPaid: (json['amount_paid'] as int).toDouble(),
    customer: Customer.fromJson(json['customer']),
    status: SaleStatus.fromJson(json['sale_status']),
  );
}