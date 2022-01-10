import 'package:flutter/material.dart';

class MyBoutton extends StatelessWidget {
  final String title;
  final Icon icon;
  late Function function;
  MyBoutton({
    Key? key,
    required this.title,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 65,
          width: 65,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44.0),
            color: const Color(0xff407CE5),
            // shape: BoxShape.circle,
          ),
          child: Column(
            children: [
              IconButton(
                alignment: Alignment.center,
                iconSize: 40,
                onPressed: () {},
                icon: icon,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Almarai'),
        ),
      ],
    );
  }
}
