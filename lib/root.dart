import 'package:flutter/material.dart';
import 'package:versammlungsplanner/presentation/counter_app/counter_app.dart';
import 'package:versammlungsplanner/presentation/theme_animation/theme_animation_page_copy.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetsExamplePage(),
          CounterApp(),
          ThemeAnimationPageCopy(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: "Theme",
          ),
        ],
      ),
    );
  }
}
