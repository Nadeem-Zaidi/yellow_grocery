part of 'category_bloc.dart';

// sealed class CategoryBlocState extends Equatable {
//   const CategoryBlocState();

//   @override
//   List<Object> get props => [];
// }

// final class CategoryBlocInitial extends CategoryBlocState {}

@immutable
class CategoryState {
  final bool loadingState;
  final List<Category> categories;

  const CategoryState({
    this.loadingState = false,
    this.categories = const [],
  });

  CategoryState copyWith({bool? loadingState, List<Category>? categories}) {
    return CategoryState(
        loadingState: loadingState ?? this.loadingState,
        categories: categories ?? this.categories);
  }

  factory CategoryState.initial() =>
      const CategoryState(loadingState: false, categories: []);
}
