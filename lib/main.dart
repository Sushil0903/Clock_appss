import 'package:clock_ui/analog_clock.dart';
import 'package:flutter/material.dart';
import 'Stopwatch.dart';
import 'home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: digital(),
    );
  }
}

class digital extends StatefulWidget {
  const digital({super.key});

  @override
  State<digital> createState() => _digitalState();
}

class _digitalState extends State<digital> {
  int buttom=0;
  List page=[homepage(),Analog(),stopwatch()];

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              buttom=index;
            });
          },
          currentIndex: buttom,
          items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.timer_rounded), label: "Alarm"),
        BottomNavigationBarItem(
            icon: Icon(Icons.timer_sharp), label: "World clock"),
        BottomNavigationBarItem(
            icon: Icon(Icons.av_timer_outlined), label: "Stopwatch"),
      ]),
      body: page[buttom],
    );
  }
}
