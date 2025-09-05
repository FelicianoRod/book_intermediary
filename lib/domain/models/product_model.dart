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
}