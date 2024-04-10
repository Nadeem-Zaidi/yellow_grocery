// import 'package:cloud_firestore/cloud_firestore.dart';

// import '../../entities/ientity.dart';

// class PCategory implements IEntity {
//   String? Id;
//   String? name;
//   String? collection;
//   String? path;
//   List<dynamic>? images;

//   PCategory({
//     this.Id,
//     this.name,
//     this.images,
//     this.path,
//     this.collection,
//   });

//   @override
//   Map<String, dynamic> toMap() {
//     return {
//       "name": name,
//     };
//   }

//   @override
//   String? get id => Id;

//   @override
//   PCategory fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) {
//     String? id = snapshot.id;
//     String? name = snapshot.data()!["name"];

//     List<dynamic>? images = snapshot.data()?["images"] ?? [];
//     String? path = snapshot.reference.path;

//     return PCategory(Id: id, name: name, images: images, path: path);
//   }

//   factory PCategory.fromFirestore(
//       DocumentSnapshot<Map<String, dynamic>> snapshot) {
//     String? id = snapshot.id;
//     String? name = snapshot.data()?["name"];
//     List<dynamic>? images = snapshot.data()?["images"];
//     String? path = snapshot.reference.path;

//     return PCategory(Id: id, name: name, images: images, path: path);
//   }

//   @override
//   // TODO: implement getName
//   String? get getName => name;

//   @override
//   String? get collectionName => collection;
// }
