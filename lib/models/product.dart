import './interfaces/ientity.dart';

class Product implements IEntity {
  String id;
  String name;
  String description;
  String categoryId;
  String brand;
  String measureUnit;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.categoryId,
      required this.brand,
      required this.measureUnit});
  @override
  IEntity fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
