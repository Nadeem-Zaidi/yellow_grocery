import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_yellow/entities/ientity.dart';

class FireQuery<T extends IEntity> {
  /// The inner FireQuery object from the cloud_firestore package
  final Query query;

  /// Set of all arguments used to build this FireQuery

  FireQuery(this.query);

  FireQuery where(
    String field, {
    dynamic isEqualTo,
    dynamic isLessThan,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThan,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
  }) =>
      FireQuery(
        query.where(
          field,
          isEqualTo: isEqualTo,
          isLessThan: isLessThan,
          isLessThanOrEqualTo: isLessThanOrEqualTo,
          isGreaterThan: isGreaterThan,
          isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
          arrayContains: arrayContains,
        ),
      );

  FireQuery orderBy(String field, {bool descending = false}) => FireQuery(
        query.orderBy(field, descending: descending),
      );

  FireQuery startAfter(List<dynamic> values) =>
      FireQuery(query.startAfter(values));

  FireQuery startAt(List<dynamic> values) => FireQuery(query.startAt(values));

  FireQuery endAt(List<dynamic> values) => FireQuery(query.endAt(values));

  FireQuery endBefore(List<dynamic> values) =>
      FireQuery(query.endBefore(values));

  FireQuery limit(int length) => FireQuery(query.limit(length));
}
