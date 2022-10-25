import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    size.width;
    size.height;
    return Container(
      height: size.height * 0.1,
      width: size.height*0.8,
      color: Colors.green,
    );
  }
}
