import 'package:flutter/material.dart';

class ThemeAnimationPage extends StatelessWidget {
  const ThemeAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Animation"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 20,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Test Heading"),
                    SizedBox(height: 15),
                    Text("Test Body"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
