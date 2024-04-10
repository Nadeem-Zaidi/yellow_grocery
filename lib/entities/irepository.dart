import 'package:fpdart/fpdart.dart';

abstract class IRepository<T> {
  TaskEither<String, List<T>> find();
  // TaskEither<String, List<T>?> query();
}
