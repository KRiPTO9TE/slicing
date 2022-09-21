import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//set this class on home: attribute at main.dart file
class MyStackBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Stats",
          style: TextStyle(
            color: Color(0xff1F1CA5),
            fontWeight: FontWeight.bold,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 8.0,
                color: Color.fromARGB(255, 96, 93, 255),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                //decoration for the outer wrapper
                color: Color(0xffFF6968),
                borderRadius: BorderRadius.circular(
                    16), //border radius exactly to ClipRRect
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: ClipRRect(
                //to clip overflown positioned containers.
                borderRadius: BorderRadius.circular(16),
                //if we set border radius on container, the overflown content get displayed at corner.
                child: Container(
                    child: Stack(
                  children: <Widget>[
                    //Stack helps to overlap widgets
                    Positioned(
                        //positioned helps to position widget wherever we want.
                        top: -80,
                        right: -50, //position of the widget
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xffFF7170) //background color with opacity
                                ))),

                    Positioned(
                        right: -80,
                        top: -50,
                        child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFF7F7E)))),

                    Positioned(
                      //main content container postition.
                      child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Heart Rate",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Image(
                                        image:
                                            AssetImage('assets/img/heart.png')),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '128 BPM',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Normal",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "80 - 120",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                )),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                //decoration for the outer wrapper
                color: Color(0xffFF6968),
                borderRadius: BorderRadius.circular(
                    16), //border radius exactly to ClipRRect
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: ClipRRect(
                //to clip overflown positioned containers.
                borderRadius: BorderRadius.circular(16),
                //if we set border radius on container, the overflown content get displayed at corner.
                child: Container(
                    child: Stack(
                  children: <Widget>[
                    //Stack helps to overlap widgets
                    Positioned(
                        //positioned helps to position widget wherever we want.
                        top: -80,
                        right: -50, //position of the widget
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(
                                    0xffFF7170) //background color with opacity
                                ))),

                    Positioned(
                        right: -80,
                        top: -50,
                        child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffFF7F7E)))),

                    Positioned(
                      //main content container postition.
                      child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Heart Rate",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Image(
                                        image:
                                            AssetImage('assets/img/heart.png')),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '128 BPM',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Normal",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "80 - 120",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
