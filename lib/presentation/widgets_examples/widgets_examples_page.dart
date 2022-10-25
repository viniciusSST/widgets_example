// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/custom_button.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/page_view_example.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/restangular_image.dart';

import 'widgets/profile_picture.dart';
import 'widgets/rox_expanded_example.dart';

class WidgetsExamplePage extends StatelessWidget {
  const WidgetsExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
            splashRadius: 25,
          ),
          backgroundColor: Colors.blue[200],
          title: const Text("Widgets Examples Page"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContainerTextExample(),
                SizedBox(height: 10),
                RoxExpandedExample(),
                SizedBox(height: 30),
                ProfilePicture(),
                SizedBox(height: 30),
                RectImage(),
                SizedBox(height: 30),
                MediaQueryExample(),
                SizedBox(height: 30),
                PageViewExample(),
                SizedBox(height: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: Material(
                    elevation: 50,
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Text Button",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(
                  // ignore: avoid_print
                  onPressed: () => {
                    Navigator.of(context).pushNamed("/screen1"),
                  }, color: Colors.blue[200]!,
                  text: "Go to Screen 1",
                ),
                SizedBox(height: 30),
                CustomButton(
                  // ignore: avoid_print
                  onPressed: () => {
                     Navigator.of(context).pushNamed("/screen2"),
                  }, color: Colors.green,
                  text: "Go to Screen 2",
                ),
              ],
            ),
          ),
        ));
  }
}
