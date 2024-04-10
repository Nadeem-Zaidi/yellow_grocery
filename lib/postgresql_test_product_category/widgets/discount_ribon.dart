import 'package:flutter/material.dart';

Widget discount_ribon(String discount) {
  return Container(
    padding: EdgeInsets.only(left: 8),
    height: 20,
    width: 75,
    decoration: const BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
    ),
    child: Text("$discount% OFF"),
  );
}
