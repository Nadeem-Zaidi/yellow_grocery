import 'package:grocery_yellow/models/product_specs.dart';

import './interfaces/ientity.dart';

class ProductVariation implements IEntity {
  String id;
  String name;
  String description;
  String productId;
  String categoryId;
  List<String> images;
  double sellingPrice;
  double mrp;
  double discount;
  List<ProductSpecs>? productSpecs;

  ProductVariation(
      {required this.id,
      required this.name,
      required this.description,
      required this.productId,
      required this.categoryId,
      required this.images,
      required this.mrp,
      required this.sellingPrice,
      required this.discount,
      this.productSpecs});
  @override
  IEntity fromJson(Map<String, dynamic> json) {
    return ProductVariation(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        productId: json["productId"],
        categoryId: json["categoryid"],
        images: json["images"],
        mrp: json["mrp"],
        sellingPrice: json["sellingprice"],
        discount: json["discount"],
        productSpecs: json["ProductSpecs"].map((specs) {
          return ProductSpecs(
              id: specs["id"],
              attributeName: specs["attributename"],
              alnValue: specs["alnvalue"],
              numValue: specs["numvalue"]);
        }));
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
