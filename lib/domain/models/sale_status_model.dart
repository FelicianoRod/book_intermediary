class SaleStatus {
  final int id;
  final String description;

  SaleStatus({
    required this.id,
    required this.description,
  });

  factory SaleStatus.fromJson(Map<String, dynamic> json) => SaleStatus(
    id: json['id'] as int,
    description: json['description'] as String,
  );
}