import 'package:flutter/material.dart';
import 'package:grocery_yellow/postgresql_test_product_category/widgets/discount_ribon.dart';
import 'package:grocery_yellow/postgresql_test_product_category/widgets/price_bar.dart';
import 'package:grocery_yellow/postgresql_test_product_category/widgets/product_item_add_button.dart';
import 'package:grocery_yellow/postgresql_test_product_category/widgets/product_item_image.dart';

// ignore: must_be_immutable
class ProductItem extends StatefulWidget {
  String url;
  String brandName;
  String productName;
  String price;
  String newPrice;
  String discount;
  String unit;
  String pack_size;

  ProductItem(
      {required this.productName,
      required this.brandName,
      required this.price,
      required this.newPrice,
      required this.discount,
      required this.url,
      required this.unit,
      required this.pack_size,
      super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              width: width * 0.40,
              height: height * 0.25,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  ProductItemImage(url: widget.url, height: height),
                  double.parse(widget.discount) > 0
                      ? discount_ribon(widget.discount)
                      : Container(),
                ],
              ),
            ),
          ),
          SizedBox(width: width * 0.060),
          Flexible(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.teal.shade50,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.delivery_dining_rounded),
                        Text("2 days")
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.009),
                  Text(
                    widget.brandName,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: height * 0.003),
                  Text(
                    widget.productName,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: height * 0.003),
                  Container(
                    width: width * 0.30,
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("${widget.pack_size}${widget.unit}"),
                  ),
                  SizedBox(height: height * 0.003),
                  Row(
                    children: [
                      //New Price
                      Expanded(
                          child: PriceBar(
                        price: widget.newPrice,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                      SizedBox(width: width * 0.009),

                      //MRP Price
                      Expanded(
                        child: PriceBar(
                            price: double.parse(widget.discount) > 0
                                ? widget.price
                                : '',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.003),
                  SizedBox(
                      width: width * 0.300,
                      height: height * 0.04,
                      child: const ProductItemButton())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
