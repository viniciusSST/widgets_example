import 'package:flutter/material.dart';

class ContainerTextExample extends StatelessWidget {
  const ContainerTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 300, wird expanded
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey,
          border: Border.all(
            color: Colors.black87,
            width: 4,
          )),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 8,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 20),
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[200],
            ),
            child: const Text(
              "Text Example",
              style: TextStyle(
                  fontStyle: FontStyle.normal, //.italic
                  fontSize: 20.0,
                  fontFamily: "Rubik",
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
