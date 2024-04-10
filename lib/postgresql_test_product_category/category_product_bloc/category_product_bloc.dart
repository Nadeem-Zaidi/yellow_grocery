import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_yellow/category_gen_files/category.pbgrpc.dart';

import 'package:grocery_yellow/proto_files/product.pbgrpc.dart';
import '../../grp/client.dart';

import 'package:grocery_yellow/proto_files/product.pb.dart' as pb;
import 'package:grocery_yellow/category_gen_files/category.pb.dart' as cb;
part 'category_product_event.dart';
part 'category_product_state.dart';
part 'category_product_bloc.freezed.dart';

class CategoryProductBloc
    extends Bloc<CategoryProductEvent, CategoryProductState> {
  PS client;
  CategoryProductBloc(this.client) : super(CategoryProductState.initial()) {
    on<CategoryProductEvent>((event, emit) async {
      switch (event) {
        case CategoryProductSubCategory(id: String id):
          await _fetchSubCategories(emit, id);
        case CategoryProductAllProduct():
          await _allProducts(emit);
        case CategoryProductByCategory(id: String id):
          await _allProductByCategoryId(emit, id);
      }
    });
  }

  Future<void> _fetchSubCategories(
      Emitter<CategoryProductState> emit, String id) async {
    await emit.forEach(client.getCategoryById(id), onData: (cb.Category data) {
      return state.copyWith(fetchResult: [...state.fetchResult, data]);
    });
  }

  Future<void> _allProducts(Emitter<CategoryProductState> emit) async {
    await emit.forEach(client.getProductStream(),
        onData: (pb.Product data) => state.copyWith(fetchProducts: [
              ...state.fetchProducts,
              data
            ])); // As()suming PS() sets up the gRPC client

    // Use listen instead of forEach to properly handle the stream
  }

  Future<void> _allProductByCategoryId(
      Emitter<CategoryProductState> emit, String id) async {
    await emit.forEach(client.getProductByCategoryStream(id),
        onData: (pb.Product data) =>
            state.copyWith(fetchProducts: [...state.fetchProducts, data]));
  }
}
