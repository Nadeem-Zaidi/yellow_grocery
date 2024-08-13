part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    required List<Product> products,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState(products: []);
}
