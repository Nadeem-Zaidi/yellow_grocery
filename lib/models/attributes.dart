import './interfaces/ientity.dart';

class Attributes implements IEntity {
  String attributeName;
  String? alnValue;
  String? numValue;

  Attributes(
      {required this.attributeName,
      required this.alnValue,
      required this.numValue});

  @override
  IEntity fromJson(Map<String, dynamic> json) {
    return Attributes(
        attributeName: json["attributename"],
        alnValue: json["alnvalue"],
        numValue: json["numvalue"]);
  }

  @override
  Map<String, dynamic> toJson() {
    return ({
      "name": attributeName,
      "alnvalue": alnValue,
      "numvalue": numValue
    });
  }
}
