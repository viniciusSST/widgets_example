import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme_animation/theme_service.dart';

class CustomSideBar extends StatefulWidget {
  final List<Widget> children;
  final Color backgroundcolor;
  const CustomSideBar(
      {super.key, required this.children, required this.backgroundcolor});

  @override
  State<CustomSideBar> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends State<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5),
        child: AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: Container(
            height: size.height,
            width: themeService.isOn ? 300 : 60,
            decoration: BoxDecoration(
              color: widget.backgroundcolor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Material(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: widget.children,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
