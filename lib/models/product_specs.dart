import './interfaces/ientity.dart';

class ProductSpecs implements IEntity {
  String id;
  String attributeName;
  String alnValue;
  String numValue;

  ProductSpecs(
      {required this.id,
      required this.attributeName,
      required this.alnValue,
      required this.numValue});

  @override
  IEntity fromJson(Map<String, dynamic> json) {
    return ProductSpecs(
        id: json["id"],
        attributeName: json["attributename"],
        alnValue: json["alnvalue"],
        numValue: json["numvalue"]);
  }

  @override
  Map<String, dynamic> toJson() {
    return ({
      "id": id,
      "attributename": attributeName,
      "alnvalue": alnValue,
      "numvalue": numValue
    });
  }
}
