import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IEntity {
  String? get id;
  String? get collectionName;
  Map<String, dynamic> toMap();
  IEntity fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc);
}
