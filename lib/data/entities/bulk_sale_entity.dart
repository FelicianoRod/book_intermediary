import 'package:objectbox/objectbox.dart';

import 'customer_entity.dart';
import 'product_entity.dart';
import 'sale_status_entity.dart';
import 'single_sale_entity.dart';
import 'vendor_entity.dart';

// enum SaleStatus {
//   requested,
//   delivered,
//   paid,
// }
//
// enum debtStatus {
//   debt,
//   paid
// }

@Entity()
class BulkSaleEntity {
  int id;
  double paid;
  final customer = ToOne<CustomerEntity>();
  final vendor = ToOne<VendorEntity>();
  final status = ToOne<SaleStatusEntity>();

  BulkSaleEntity({
    this.id = 0,
    required this.paid,
  });
}