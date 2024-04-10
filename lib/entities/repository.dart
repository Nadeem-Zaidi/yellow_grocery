import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:grocery_yellow/entities/ientity.dart';
import 'package:grocery_yellow/entities/query.dart';

import 'irepository.dart';

class FirestoreRepository<T extends IEntity> implements IRepository<T> {
  final T entity;
  final firestore = FirebaseFirestore.instance;
  late FirestoreCollection colReference;
  FirestoreRepository(this.entity) {
    colReference =
        FirestoreCollection(firestore.collection(entity.collectionName!));
  }

  @override
  TaskEither<String, List<T>> find() => TaskEither.tryCatch(
        () async {
          List<T> entities = [];

          var querySnapshot = await colReference.query.get();
          for (var i in querySnapshot.docs) {
            entities.add(entity.fromFirestore(
                i as DocumentSnapshot<Map<String, dynamic>>) as T);
          }

          return entities;
        },
        (error, stackTrace) => error.toString(),
      );

  // @override
  // TaskEither<String, List<T>?> query() => TaskEither.tryCatch(
  //       () {
  //         return null;
  //       },
  //       (error, stackTrace) => error.toString(),
  //     );
}

class FirestoreCollection extends FireQuery {
  final CollectionReference? colReference;
  FirestoreCollection(this.colReference) : super(colReference!);
}
