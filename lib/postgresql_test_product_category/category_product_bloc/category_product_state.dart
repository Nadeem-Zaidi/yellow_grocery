part of 'category_product_bloc.dart';

@freezed
class CategoryProductState with _$CategoryProductState {
  const factory CategoryProductState({
    required List<cb.Category> fetchResult,
    required List<pb.Product> fetchProducts,
    @Default("1") String parent,
    @Default(false) bool listFetched,
    @Default(false) bool productFetched,
    @Default(null) String? errorMessage,
    @Default(false) bool? isProgress,
  }) = _CategoryProductState;

  factory CategoryProductState.initial() =>
      const CategoryProductState(fetchResult: [], fetchProducts: []);
}
