import 'customer_model.dart';

class SaleProgress {
  final Customer customer;
  final String title;
  final int amount;
  final double total;
  final double paid;
  final double debt;
  final DateTime lastUpdated;
  final String status;

  SaleProgress({
    required this.customer,
    required this.title,
    required this.amount,
    required this.total,
    required this.paid,
    required this.debt,
    required this.lastUpdated,
    required this.status,
  });
}
