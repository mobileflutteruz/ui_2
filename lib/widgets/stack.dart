import 'package:flutter/material.dart';

class Stcks extends StatelessWidget {
  const Stcks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          
          margin: EdgeInsets.only(left: 0, right: 10),
          height: 1.0,
          width: 70.0,
          color: Colors.black,
        ),
        const Text(
          "Essentials",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 1.0,
            width: 70.0,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
