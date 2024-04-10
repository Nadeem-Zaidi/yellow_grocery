import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_yellow/entities/ientity.dart';

class AppUser implements IEntity {
  String? Id;
  String? name;
  String? phoneNumber;
  String? latitude;
  String? longitude;

  AppUser(
      {this.Id, this.name, this.phoneNumber, this.latitude, this.longitude});
  @override
  AppUser fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    print(doc.data());
    return AppUser(
      Id: doc.id,
      name: doc.data()?["name"] ?? "",
      phoneNumber: doc.data()?["phoneNumber"] ?? "",
      latitude: doc.data()?["latitude"] ?? "",
      longitude: doc.data()?["longitude"] ?? "",
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "Id": Id,
      "name": name,
      "phoneNumber": phoneNumber,
      "latitude": latitude,
      "longitude": longitude,
    };
  }

  @override
  String? get id => Id;

  @override
  // TODO: implement collectionName
  String? get collectionName => throw UnimplementedError();
}
