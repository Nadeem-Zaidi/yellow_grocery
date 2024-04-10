import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:grocery_yellow/product_detail/widgets/product_item.dart';

import '../product_detail_bloc/product_detail_bloc.dart';

// ignore: must_be_immutable
class ProductDetail extends StatefulWidget {
  String vid;
  ProductDetail({required this.vid, super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Detail")),
      body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) {
          var product = state.product;
          var variation = state.variation;

          if (state.isLoading == true) {
            return const Center(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state.product != null) {
            return ProductItem(
                name: variation!.description,
                price: variation.price.toStringAsFixed(2),
                newPrice: variation.newprice.toStringAsFixed(2),
                discount: variation.discount.toStringAsFixed(2),
                vid: variation.id,
                images: variation.images,
                variations: product!.variation);
          }
          return const Center();
        },
      ),
    );
  }
}
