import 'package:objectbox/objectbox.dart';

@Entity()
class CustomerEntity {
  int id;
  String name;

  CustomerEntity({
    this.id = 0,
    required this.name,
  });
}