import 'package:objectbox/objectbox.dart';

@Entity()
class VendorEntity {
  int id;
  String name;
  String username;
  String password; 

  VendorEntity({
    this.id = 0,
    required this.name,
    required this.username,
    required this.password,
  });
}