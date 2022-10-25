import 'package:flutter/material.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/custom_button.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Screen 2"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/screen1");
              },
              color: Colors.green,
              text: "Back to Screen 1",
            ),
            const SizedBox(height: 10),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.green,
              text: "Navigate Back",
            ),
          ],
        ),
      ),
    );
  }
}
