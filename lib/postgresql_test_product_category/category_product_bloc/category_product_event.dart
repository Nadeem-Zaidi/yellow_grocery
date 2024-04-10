part of 'category_product_bloc.dart';

sealed class CategoryProductEvent {}

class CategoryProductSubCategory extends CategoryProductEvent {
  String id;
  CategoryProductSubCategory(this.id);
}

class CategoryProductAllProduct extends CategoryProductEvent {
  CategoryProductAllProduct();
}

class CategoryProductByCategory extends CategoryProductEvent {
  String id;
  CategoryProductByCategory(this.id);
}
