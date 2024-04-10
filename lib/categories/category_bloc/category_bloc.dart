import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_yellow/category_gen_files/category.pbgrpc.dart';
import 'package:grocery_yellow/grp/client.dart';
import 'package:grocery_yellow/category_gen_files/category.pb.dart' as cb;
part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  Map<String, dynamic> statePrev = {};
  PS client;

  CategoryBloc(this.client) : super(CategoryState.initial()) {
    on<CategoryEvent>(((event, emit) async {
      switch (event) {
        case FetchCategoriesEvents():
          await _fetchCategories(emit);

        case QueryCategoryEvent(id: int id, prev: String name):
          await _fetchSubCategoryWithId(emit, id, name);
        case PreviousEvent(id: String id):
          await _goToPreviousState(emit, id);
        // TODO: Handle this case.
      }
    }));
  }

  Future<void> _goToPreviousState(Emitter<CategoryState> emit, id) async {
    emit(statePrev[id]!);
  }

  Future<void> _fetchSubCategoryWithId(
      Emitter<CategoryState> emit, int id, String name) async {
    await emit.forEach(client.getCategoryById(id.toString()),
        onData: (cb.Category data) =>
            state.copyWith(fetchResult: [...state.fetchResult, data]));
  }

  Future<void> _fetchCategories(Emitter<CategoryState> emit) async {
    await emit.forEach(client.getCategoryStream(),
        onData: (cb.Category data) =>
            state.copyWith(fetchResult: [...state.fetchResult, data]));
  }
}
