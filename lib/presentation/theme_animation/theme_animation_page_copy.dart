import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:versammlungsplanner/presentation/widgets_examples/widgets/custom_sidebar_widget.dart';

import 'theme_service.dart';

class ThemeAnimationPageCopy extends StatefulWidget {
  const ThemeAnimationPageCopy({super.key});

  @override
  State<ThemeAnimationPageCopy> createState() => _ThemeAnimationPageCopyState();
}

class _ThemeAnimationPageCopyState extends State<ThemeAnimationPageCopy> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("TestPage2"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          ),
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0, top: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 5,
                      child: Container(
                        height: size.height * 0.8,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 50),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 50),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blue[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //--------------------------------------------------
                  const SizedBox(width: 10),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(12),
                      elevation: 5,
                      child: Container(
                        height: size.height * 0.8,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 50),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 50),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blue[100],
                                ),
                                height: (500 / 3) - 50,
                                width: 450,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CustomSideBar(
            backgroundcolor: Colors.white,
            children: [CustomIconButton()],
          )
        ]),
      );
    });
  }
}

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({super.key});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  Color selectedItemColor = Colors.green;
  Color defaultColor = Colors.black;
  Color color1 = Colors.black;
  Color color2 = Colors.black;
  Color color3 = Colors.black;
  Color color4 = Colors.black;

  IconData iconData1 = Icons.home;
  IconData iconData2 = Icons.home;
  IconData iconData3 = Icons.home;
  IconData iconData4 = Icons.home;

  String iconText1 = "Versammlungsplanner";
  String iconText2 = "Test";
  String iconText3 = "Versammlungsplanner";
  String iconText4 = "Test";

  double iconFontSize = 15;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              IconButton(
                color: color1,
                onPressed: () {
                  setState(() {
                    color1 = selectedItemColor;
                    color2 = defaultColor;
                    color3 = defaultColor;
                    color4 = defaultColor;
                  });
                },
                icon: Icon(iconData1),
              ),
              themeService.isOn
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        iconText1,
                        style: TextStyle(
                            color: color1,
                            fontSize: iconFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : const Text("")
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              IconButton(
                color: color2,
                onPressed: () {
                  setState(() {
                    color1 = defaultColor;
                    color2 = selectedItemColor;
                    color3 = defaultColor;
                    color4 = defaultColor;
                  });
                },
                icon: Icon(iconData2),
              ),
              themeService.isOn
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        iconText2,
                        style: TextStyle(
                            color: color2,
                            fontSize: iconFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : const Text("")
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              IconButton(
                color: color3,
                onPressed: () {
                  setState(() {
                    color1 = defaultColor;
                    color2 = defaultColor;
                    color3 = selectedItemColor;
                    color4 = defaultColor;
                  });
                },
                icon: Icon(iconData3),
              ),
              themeService.isOn
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        iconText3,
                        style: TextStyle(
                            color: color3,
                            fontSize: iconFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : const Text("")
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              IconButton(
                color: color4,
                onPressed: () {
                  setState(() {
                    color1 = defaultColor;
                    color2 = defaultColor;
                    color3 = defaultColor;
                    color4 = selectedItemColor;
                  });
                },
                icon: Icon(iconData4),
              ),
              themeService.isOn
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        iconText4,
                        style: TextStyle(
                            color: color4,
                            fontSize: iconFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : const Text("")
            ],
          ),
          const SizedBox(height: 30),
        ],
      );
    });
  }
}
