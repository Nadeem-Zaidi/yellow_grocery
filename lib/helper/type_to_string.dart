import '../entities/ientity.dart';

String typeToString(IEntity t) {
  String name = t.runtimeType.toString().toLowerCase();
  return "${name}s";
}
