import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: PageView(
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SinglePage(
                size: size,
                text: "Todas as alteracoes feitas voce pode mandar para o gitHub com seguintes comandos:",
                text1: "git add.\ngit commit -m \"My First Commit\"\ngit push",
                color: Colors.grey,
                textColor: Colors.white,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SinglePage(
              size: size,
              text: "Das geht nur mit MousePad",
              text1: "Von Links nach Rechst wischen",
              color: Colors.grey,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SinglePage extends StatelessWidget {
  final Size size;
  final String text;
  final String text1;
  final Color color;
  final Color textColor;
  const SinglePage(
      {super.key,
      required this.size,
      required this.text,
      required this.text1,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.85,
      decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 25, color: textColor, fontWeight: FontWeight.bold),
            ),
            Text(
              text1,
              style: TextStyle(
                  fontSize: 18,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
