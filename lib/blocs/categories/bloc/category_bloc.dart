import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery_yellow/models/categories/category.dart';
import 'package:grocery_yellow/rest_api/api.dart';

part 'category_bloc_state.dart';

class CategoryBloc extends Cubit<CategoryState> {
  CategoryBloc() : super(CategoryState.initial());

  Future<void> getCategoriesList() async {
    emit(state.copyWith(loadingState: true));
    List<Category> categories = await categoryList();
    emit(state.copyWith(loadingState: false, categories: categories));
  }
}
