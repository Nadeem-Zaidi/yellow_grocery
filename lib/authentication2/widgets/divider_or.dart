import 'package:flutter/material.dart';

Widget dividerOr() => const Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "or",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ],
    );

Widget otherSignInOptions() {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/google_logo.png",
          height: 35,
          width: 35,
        ),
        const SizedBox(width: 10),
        Image.asset(
          "assets/images/x_twitter.jpeg",
          height: 40,
          width: 40,
        ),
      ],
    ),
  );
}
