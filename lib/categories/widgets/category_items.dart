import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String? url;
  String name;
  CategoryItem({required this.name, this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 75,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber.shade100,
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              url ??
                  "https://www.pngitem.com/pimgs/m/240-2407572_big-basket-of-fruits-and-vegetables-hd-png.png",
              height: 75,
              width: 80,
              fit: BoxFit.cover,
            )),
      ),
      const SizedBox(height: 5),
      Container(
        padding: const EdgeInsets.all(2),
        width: 80,
        decoration: BoxDecoration(
            color: Colors.teal.shade100,
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          style: Theme.of(context).textTheme.bodySmall,
          name,
        ),
      )
    ]);
  }
}
