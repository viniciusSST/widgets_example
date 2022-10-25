import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  Color _color = Colors.grey;

  void _incrementCounter() {
    setState(() {
      _counter++;
      switch (_counter) {
        case 10:
          _color = Colors.blue[200]!;
          break;
        case 100:
          _color = Colors.green[200]!;
          break;
        case 1000:
          _color = Colors.red[200]!;
          break;
        case 10000:
          _color = Colors.pink;
          break;
        default:
          _color;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
      } else {
        _counter--;
      }
      if (_counter < 10) {
        _color = Colors.grey;
      } else if (_counter < 100) {
        _color = Colors.blue[200]!;
      } else if (_counter < 1000) {
        _color = Colors.green[200]!;
      } else if (_counter < 10000) {
        _color = Colors.red[200]!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text("Counter App"),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(18),
              elevation: 15,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Counter",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$_counter",
                      style:
                          const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () => _decrementCounter(),
              backgroundColor: Colors.red,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () => _incrementCounter(),
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
