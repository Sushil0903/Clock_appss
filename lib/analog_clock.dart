import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class Analog extends StatefulWidget {
  const Analog({super.key});


  @override
  State<Analog> createState() => _AnalogState();
}

class _AnalogState extends State<Analog> {
  Duration duration=Duration();

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration=Duration(seconds: dateTime.second,minutes: dateTime.minute,hours: dateTime.hour);
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f4f6),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 50, top: 80),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Color(0xfff3f4f6),
                borderRadius: BorderRadius.circular(250),
                boxShadow: [
                  BoxShadow(
                      color: Colors.pinkAccent,
                      blurRadius: 15,
                      spreadRadius: -3,
                      offset: Offset(8, 10))
                ]),
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.expand,
              children: [
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
                          angle: duration.inMinutes / 30 * pi,
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
                            angle: duration.inMinutes/150*pi,
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
                  angle: duration.inSeconds / 30 * pi,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 140, left: 0, top: 15),
                      height: 268,
                      width: 2.8,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: duration.inMinutes / 30 * pi,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 110, left: 0, top: 15),
                      height: 110,
                      width: 3.5,
                      decoration: BoxDecoration(
                          color: Color(0xff006afe),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: duration.inHours / 6 * pi,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 110, left: 0, top: 15),
                      height: 80,
                      width: 5,
                      decoration: BoxDecoration(
                          color:Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle,border: Border.all(width: 1.5,color: Colors.pinkAccent)),
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );

}
void timer() async{
      await Future.delayed(Duration(seconds: 1),() {
    },);
    duration=Duration(seconds: duration.inSeconds +1);
    timer();
    setState(() {

    });
  }
}
