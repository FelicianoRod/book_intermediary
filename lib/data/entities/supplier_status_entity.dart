import 'package:objectbox/objectbox.dart';

@Entity()
class SupplierStatusEntity {
  int id;
  String description;

  SupplierStatusEntity({
    this.id = 0,
    required this.description,
  });
}