import 'customer_model.dart';
import 'product_model.dart';

class SuccessfulPurchase {
  final Customer customer;
  final List<ItemPurchased> items;
  final double paid;

  const SuccessfulPurchase({
    required this.customer,
    required this.items,
    required this.paid,
  });
}

class ItemPurchased {
  final Product product;
  final int amount;

  ItemPurchased({
    required this.product,
    required this.amount,
  });
}

