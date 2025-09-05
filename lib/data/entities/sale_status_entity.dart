import 'package:objectbox/objectbox.dart';

@Entity()
class SaleStatusEntity {
  int id;
  String description;

  SaleStatusEntity({
    this.id = 0,
    required this.description,
  });
}