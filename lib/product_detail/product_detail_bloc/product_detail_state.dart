part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    @Default(null) Product? product,
    required List<Product> products,
    @Default(null) Variation? variation,
    @Default(null) String? errorMessage,
    @Default(false) bool productFetched,
    @Default(true) bool isLoading,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() =>
      const ProductDetailState(product: null, products: [], variation: null);
}
