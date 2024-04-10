import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/postgresql_test_product_category/widgets/price_bar.dart';
import 'package:grocery_yellow/product_detail/product_detail_bloc/product_detail_bloc.dart';

import '../../proto_files/product.pb.dart';
import 'page_detail_crousal.dart';

// ignore: must_be_immutable
class ProductItem extends StatefulWidget {
  String name;
  String price;
  String newPrice;
  String discount;
  String vid;
  List<String> images;
  List<Variation> variations;

  ProductItem({
    required this.name,
    required this.price,
    required this.newPrice,
    required this.discount,
    required this.vid,
    required this.images,
    required this.variations,
    super.key,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: height * 0.020,
          ),
          height: height * 0.065,
          decoration: const BoxDecoration(),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text('\u{20B9}${widget.price}'),
        ImageCarouselWithThumbnails(imageUrls: widget.images),
        SizedBox(height: height * 0.015),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Available In",
            )),
        SizedBox(
          height: height * 0.30,
          child: ListView.separated(
            itemCount: widget.variations.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  context
                      .read<ProductDetailBloc>()
                      .add(VariationView(widget.variations[index].id));
                },
                child: Stack(
                  children: [
                    Card(
                      elevation: 2,
                      color: widget.variations[index].id == widget.vid
                          ? Colors.amber
                          : null,
                      child: ListTile(
                        leading: Image.network(
                          widget.variations[index].images[0],
                          height: 35,
                        ),
                        title: Text(
                            "${widget.variations[index].size}-${widget.variations[index].unit}"),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 1,
                              child: PriceBar(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  price:
                                      "Price ${widget.variations[index].price}"),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: PriceBar(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    price: widget.variations[index].discount > 0
                                        ? "MRP ${widget.variations[index].price}"
                                        : ""),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    widget.variations[index].discount > 0
                        ? Positioned(
                            left: width * 0.70,
                            top: height * 0.015,
                            child: Container(
                              padding: EdgeInsets.all(height * 0.004),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius:
                                      BorderRadius.circular(height * 0.025)),
                              child: Text(
                                "${widget.variations[index].discount}% OFF",
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) =>
                SizedBox(height: height * 0.016),
          ),
        )
      ],
    );
  }
}
