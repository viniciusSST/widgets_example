
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:versammlungsplanner/presentation/navigation_examples_screens/screen1.dart';
import 'package:versammlungsplanner/presentation/navigation_examples_screens/screen2.dart';
import 'package:versammlungsplanner/presentation/theme_animation/theme_service.dart';
//import 'package:versammlungsplanner/presentation/widgets_examples/widgets_examples_page.dart';
import 'package:versammlungsplanner/root.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeService(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: WidgetsExamplePage(),
          routes: <String, WidgetBuilder>{
            //"/root" : (BuildContext context) => const RootWidget(),
            "/screen1": (BuildContext context) => const Screen1(),
            "/screen2": (BuildContext context) => const Screen2(),
          },
          home: const RootWidget());
    });
  }
}
