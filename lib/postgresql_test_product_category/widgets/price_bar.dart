import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PriceBar extends StatelessWidget {
  final String price;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextDecoration? decoration;

  PriceBar(
      {super.key,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.color,
      required this.price,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\u{20B9}$price',
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration),
    );
  }
}
