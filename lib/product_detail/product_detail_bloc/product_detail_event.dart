part of 'product_detail_bloc.dart';

sealed class ProductDetailEvent {}

class ProductDetailView extends ProductDetailEvent {
  String productId;
  String variationId;

  ProductDetailView(this.productId, this.variationId);
}

class VariationView extends ProductDetailEvent {
  String variationId;

  VariationView(this.variationId);
}
