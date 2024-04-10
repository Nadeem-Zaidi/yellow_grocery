import 'package:flutter/material.dart';

class ProductItemImage extends StatelessWidget {
  final String url; // Use lowercase 'url' for consistency
  final double height;

  const ProductItemImage({super.key, required this.url, required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        url,
        height: height * 0.20,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
