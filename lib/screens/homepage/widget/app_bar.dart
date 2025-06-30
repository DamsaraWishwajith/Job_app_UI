import 'package:flutter/material.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Icon(Icons.menu),
        ),
        Text(
          'Creative Jobs',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://tse1.mm.bing.net/th?id=OIP.y-nGyqT5AwES8oqp344z4gHaHa&pid=Api&P=0&h=220',
              ),
            ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ],
    );
  }
}
