import 'package:flutter/material.dart';

class ProductItemButton extends StatelessWidget {
  const ProductItemButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(

          // Background color
          backgroundColor: Theme.of(context).primaryColor),
      child: const Text(
        "Add",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
