import 'package:objectbox/objectbox.dart';

@Entity()
class ProductEntity {
  int id;
  @Index()
  int code;
  String title;
  String category;
  double donation;

  ProductEntity({
    this.id = 0,
    required this.code,
    required this.title,
    required this.category,
    required this.donation,
  });
}