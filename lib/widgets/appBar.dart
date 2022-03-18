import 'package:flutter/material.dart';

class titles extends StatelessWidget {
  const titles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
         Text(
          "Milan",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        Container(
          height: 1.0,
          width: 270.0,
          color: Colors.black,
        ),
        const Text(
          "Search",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ]),
    );
  }
}
