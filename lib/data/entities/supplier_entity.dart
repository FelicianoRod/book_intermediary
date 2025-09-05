import 'package:objectbox/objectbox.dart';

@Entity()
class SupplierEntity {
  int id;
  String name;

  SupplierEntity({
    this.id = 0,
    required this.name,
  });
}