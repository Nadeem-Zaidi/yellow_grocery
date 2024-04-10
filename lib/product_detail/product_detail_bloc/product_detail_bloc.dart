import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_yellow/proto_files/product.pb.dart';

import '../../grp/client.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  PS client;
  ProductDetailBloc(this.client) : super(ProductDetailState.initial()) {
    on<ProductDetailEvent>((event, emit) async {
      switch (event) {
        case ProductDetailView(
            productId: String productId,
            variationId: String variationId
          ):
          await _productDetail(emit, productId, variationId);
        case VariationView(variationId: String variationId):
          await _productVariation(emit, variationId);
      }
    });
  }

  Future<void> _productDetail(Emitter<ProductDetailState> emit,
      String productId, String variationId) async {
    await emit.forEach(client.getProductDetailStream(productId, variationId),
        onData: (Product data) {
      Variation variation =
          data.variation.firstWhere((element) => element.id == variationId);
      return state.copyWith(
          product: data, variation: variation, isLoading: false);
    });
  }

  Future<void> _productVariation(
      Emitter<ProductDetailState> emit, String variationId) async {
    Variation updatedVariation = state.product!.variation
        .firstWhere((element) => element.id == variationId);
    emit(state.copyWith(variation: updatedVariation));
  }
}

Stream<Product> getProductDetailListStream() async* {}
