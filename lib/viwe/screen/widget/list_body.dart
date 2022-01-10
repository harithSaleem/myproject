import 'package:flutter/material.dart';

class ListtBody extends StatelessWidget {
  const ListtBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 3),
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        // boxShadow: BoxShadow(
        //   color: Colors.black
        // ),
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
    );
  }
}
