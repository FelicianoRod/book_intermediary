 import 'package:objectbox/objectbox.dart';

import 'bulk_sale_entity.dart';
import 'sale_status_entity.dart';

@Entity()
 class SaleHistoryEntity {
  int id;
  @Property(type: PropertyType.date)
  DateTime date;
  final bulkSale = ToOne<BulkSaleEntity>();
  final previousStatus = ToOne<SaleStatusEntity>();
  final subsequentStatus = ToOne<SaleStatusEntity>();

  SaleHistoryEntity({
    this.id = 0,
    required this.date,
  });
 }