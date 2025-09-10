enum Category {
  forTheCommunity,
  books,
  compendiums,
  magazines,
  subscriptions
}

class Product {
  final int id;
  final int code;
  final String name;
  final double donation;
  // final Category category;
  final String category;

  Product({
    required this.id,
    required this.code,
    required this.name,
    required this.donation,
    required this.category,
  });

  static Product fromJson(Map<String, dynamic> json) => Product(
    id: json['id'] as int,
    code: json['code'] as int,
    // code: (json['code'] as double).toInt(),
    name: json['name'] as String,
    donation: (json['donation'] as int).toDouble(),
    category: json['category']['name'] as String,
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'code': code,
    'name': name,
    'donation': donation,
    'category_id': category,
  };
}

