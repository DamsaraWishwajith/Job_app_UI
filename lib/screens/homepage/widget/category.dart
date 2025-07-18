import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        Text('Show All', style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
