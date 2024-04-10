part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<cb.Category> fetchResult,
    @Default("1") String parent,
    @Default(false) bool listFetched,
    @Default(false) bool productFetched,
    @Default(null) String? errorMessage,
  }) = _CategoryState;

  factory CategoryState.initial() => const CategoryState(fetchResult: []);
}
