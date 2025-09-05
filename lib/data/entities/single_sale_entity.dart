import 'package:objectbox/objectbox.dart';

import 'bulk_sale_entity.dart';
import 'customer_entity.dart';
import 'product_entity.dart';

@Entity()
class SingleSaleEntity {
  int id;
  int amount;
  final product = ToOne<ProductEntity>();
  final bulkSale = ToOne<BulkSaleEntity>();

  SingleSaleEntity({
    this.id = 0,
    required this.amount,
  });
}