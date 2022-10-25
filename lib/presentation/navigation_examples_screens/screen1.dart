import 'package:flutter/material.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/custom_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Screen 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: CustomButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed("/screen2");
          },
          color: Colors.blue,
          text: "Go to Screen 2",
        ),
      ),
    );
  }
}
