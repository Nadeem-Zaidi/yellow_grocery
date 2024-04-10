part of 'category_bloc.dart';

sealed class CategoryEvent {}

class FetchCategoriesEvents extends CategoryEvent {}

class QueryCategoryEvent extends CategoryEvent {
  int id;
  String prev;
  QueryCategoryEvent(this.id, this.prev);
}

class PreviousEvent extends CategoryEvent {
  String id;

  PreviousEvent(this.id);
}
