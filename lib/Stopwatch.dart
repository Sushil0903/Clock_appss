import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class stopwatch extends StatefulWidget {
  const stopwatch({super.key});

  @override
  State<stopwatch> createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSecond = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSecond = "00";
      digitMinutes = "00";
      digitHours = "00";
      started = false;
    });
  }

  void addlaps() {
    String lap = "$digitHours:$digitMinutes:$digitSecond";
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      int localHours = hours;

      if (localSeconds > 59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        } else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;

        digitSecond = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f4f6),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 80),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Color(0xfff3f4f6),
                borderRadius: BorderRadius.circular(250),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff006afe),
                      blurRadius: 15,
                      spreadRadius: -3,
                      offset: Offset(8, 10))
                ]),
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Row(
                    children: [
                      Text(
                        "$digitHours:",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$digitMinutes:",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff006afe)),
                      ),
                      Text(
                        "$digitSecond",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff006afe)),
                      ),
                    ],
                  ),
                  left: 90,
                  right: 50,
                  top: 80,
                ),
                Positioned(
                  top: 110,
                  left: 107,
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 80),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Color(0xfff3f4f6),
                        borderRadius: BorderRadius.circular(250),
                        boxShadow: [
                          // BoxShadow(
                          //     color: Color(0xff006afe),
                          //     blurRadius: 15,
                          //     spreadRadius: -3,
                          //     offset: Offset(8, 10)),
                        ]),
                    alignment: Alignment.center,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Transform.rotate(
                          angle: 0,
                          child: Column(
                            children: [
                              Text(
                                "30",
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                "15",
                                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 1 / 6 * pi,
                          child: Column(
                            children: [
                              Transform.rotate(
                                  angle: 6.3,
                                  child: Text(
                                    "I",
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                  )),
                              Spacer(),
                              Transform.rotate(
                                angle: 6.3,
                                child: Text(
                                  "I",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 2 / 6 * pi,
                          child: Column(
                            children: [
                              Transform.rotate(
                                angle: 5.2,
                                child: Text(
                                  "5",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Transform.rotate(
                                angle: 5.2,
                                child: Text(
                                  "20",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 3 / 6 * pi,
                          child: Column(
                            children: [
                              Transform.rotate(
                                angle: 6.3,
                                child: Text(
                                  "II",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Transform.rotate(
                                angle: 6.3,
                                child: Text(
                                  "II",
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 4 / 6 * pi,
                          child: Column(
                            children: [
                              Transform.rotate(
                                angle: 4.2,
                                child: Text(
                                  "10",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Transform.rotate(
                                angle: 4.2,
                                child: Text(
                                  "25",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 5 / 6 * pi,
                          child: Column(
                            children: [
                              Transform.rotate(
                                angle: 3.2,
                                child: Text(
                                  "I",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Transform.rotate(
                                angle: 3.2,
                                child: Text(
                                  "I",
                                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: seconds / 30 * pi,
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 130, left: 0, top: 15),
                              height: 100,
                              width: 3,
                              decoration: BoxDecoration(
                                  color: Color(0xff006afe),
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: minutes/30*pi,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 22,
                              width: 3,
                            color: Colors.black,),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 0,
                  child: Column(
                    children: [
                      Text(
                        "60",
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "30",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 1 / 6 * pi,
                  child: Column(
                    children: [
                      Transform.rotate(
                          angle: 5.8,
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 20),
                          )),
                      Spacer(),
                      Transform.rotate(
                        angle: 5.8,
                        child: Text(
                          "35",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 2 / 6 * pi,
                  child: Column(
                    children: [
                      Transform.rotate(
                        angle: 5.2,
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Transform.rotate(
                        angle: 5.2,
                        child: Text(
                          "40",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 3 / 6 * pi,
                  child: Column(
                    children: [
                      Transform.rotate(
                        angle: 4.7,
                        child: Text(
                          "15",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Transform.rotate(
                        angle: 4.7,
                        child: Text(
                          "45",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 4 / 6 * pi,
                  child: Column(
                    children: [
                      Transform.rotate(
                        angle: 4.1,
                        child: Text(
                          "20",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Transform.rotate(
                        angle: 4.2,
                        child: Text(
                          "50",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 5 / 6 * pi,
                  child: Column(
                    children: [
                      Transform.rotate(
                        angle: 3.6,
                        child: Text(
                          "25",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Transform.rotate(
                        angle: 3.6,
                        child: Text(
                          "55",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: seconds / 30 * pi,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 130, left: 0, top: 15),
                      height: 268,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Color(0xff006afe),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 300,
            width: double.infinity,
            color: Color(0xfff3f4f6),
            child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "🏴 ${index + 1}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "${laps[index]}",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  addlaps();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.flag,
                    size: 40,
                    color: Colors.black54,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    CircleBorder(),
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  (!started) ? start() : stop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    (started) ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,size: 40,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff006afe),
                    ),
                    shape: MaterialStatePropertyAll(CircleBorder(),),),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  reset();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.restart_alt,
                    color: Colors.black54,
                    size: 40,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(CircleBorder(),),),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
