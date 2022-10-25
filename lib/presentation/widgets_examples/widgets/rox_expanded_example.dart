import 'package:flutter/material.dart';

class RoxExpandedExample extends StatelessWidget {
  const RoxExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellow,
          height: 100,
          width: 50,
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 8,
          child: Container(
            color: Colors.green,
            height: 100,
            width: 50,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
            height: 100,
            width: 50,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          color: Colors.yellow,
          height: 100,
          width: 50,
        ),
      ],
    );
  }
}
