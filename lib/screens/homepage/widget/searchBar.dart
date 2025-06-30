import 'package:flutter/material.dart';

class CusSearchBar extends StatelessWidget {
  const CusSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.7,
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Search For  Jobs',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 55,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
      ],
    );
  }
}
