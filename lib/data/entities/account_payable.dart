import 'package:objectbox/objectbox.dart';

import 'bulk_sale_entity.dart';
import 'customer_entity.dart';
import 'supplier_entity.dart';
import 'supplier_status_entity.dart';

@Entity()
class AccountPayableEntity {
  int id;
  double paid;
  final supplier = ToOne<SupplierEntity>();
  final bulkSale = ToOne<CustomerEntity>();
  final status = ToOne<SupplierStatusEntity>();

  AccountPayableEntity({
    this.id = 0,
    required this.paid
  });

}