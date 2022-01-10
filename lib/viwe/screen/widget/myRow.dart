import 'package:flutter/material.dart';

class bulidRow extends StatelessWidget {
  bulidRow({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  String title1;
  String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            ),
            label: Text(
              title1,
              style: const TextStyle(
                  color: Colors.black, fontSize: 15, fontFamily: 'Almarai'),
            ),
          ),
          Row(
            children: [
              Text(
                title2,
                style: const TextStyle(
                    color: Colors.black, fontSize: 15, fontFamily: 'Almarai'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
