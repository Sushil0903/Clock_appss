import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Duration duration = Duration();
  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration = Duration(
        seconds: dateTime.second,
        minutes: dateTime.minute,
        hours: dateTime.hour);
    timer();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text(
          "Clock",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 280,
              ),
              Text(
                "${duration.inHours % 12}:".padLeft(2,"0"),
                style: TextStyle(color: Colors.black87, fontSize: 40),
              ),
              Text(
                "${duration.inMinutes % 60}:".padLeft(2, "0"),
                style: TextStyle(color: Colors.black87, fontSize: 40),
              ),
              Text(
                "${duration.inSeconds % 60}".padLeft(2, "0"),
                style: TextStyle(color: Colors.black87, fontSize: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void timer() async {
    await Future.delayed(
      Duration(seconds: 1),
          () {},
    );
    duration = Duration(seconds: duration.inSeconds + 1);
    timer();
    setState(() {});
  }
}
