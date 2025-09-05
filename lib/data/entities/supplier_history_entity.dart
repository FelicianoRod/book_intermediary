import 'package:objectbox/objectbox.dart';

import 'account_payable.dart';
import 'supplier_status_entity.dart';

@Entity()
class SupplierHistoryEntity {
  int id;
  @Property(type: PropertyType.date)
  DateTime date;
  final previousStatus = ToOne<SupplierStatusEntity>();
  final subsequentStatus = ToOne<SupplierStatusEntity>();
  final accountPayable = ToOne<AccountPayableEntity>();

  SupplierHistoryEntity({
    this.id = 0,
    required this.date,
  });
}