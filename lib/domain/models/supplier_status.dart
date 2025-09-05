class SupplierStatus {
  final int code;
  final String title;
  final int amount;
  final double total;
  final double paid;
  final double debt;
  final DateTime lastUpdated;
  final String status;

  SupplierStatus({
    required this.code,
    required this.title,
    required this.amount,
    required this.total,
    required this.paid,
    required this.debt,
    required this.lastUpdated,
    required this.status,
  });
}