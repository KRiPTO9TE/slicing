import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing30days/cart/cart.dart';
import 'package:slicing30days/glassmorphism/glasmorphism.dart';
import 'package:slicing30days/theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Glassmorphism(
          blur: 15,
          opacity: 0.05,
          radius: 0,
          border: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Like button
                IconButton(
                  onPressed: () {},
                  icon: new Image.asset("assets/img/Home 1.png"),
                ),

                // Dislike button
                IconButton(
                  onPressed: () {},
                  icon: new Image.asset("assets/img/History 1.png"),
                ),

                // Comment button
                IconButton(
                  onPressed: () {},
                  icon: new Image.asset("assets/img/Notification 1.png"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: new Image.asset("assets/img/Profile 1.png"),
                ),
                // Bookmark/Save button
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/img/glasswall.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Hark Moppus',
                            style: h3TextStyle.copyWith(color: Colors.white),
                          ),
                          Text(
                            'Welcome!',
                            style:
                                subhead3TextStyle.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            "assets/img/pic.png",
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                  SizedBox(height: 32),
                  // Build Widget Glassmorphism
                  Glassmorphism(
                    blur: 15,
                    opacity: 0.2,
                    radius: 20,
                    border: 1.5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style: paragraph2TextStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Alex Gaskan',
                                    style: h2TextStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Container(
                                  width: 40,
                                  height: 30,
                                  child: Image.asset(
                                    "assets/img/pic1.png",
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Card Number',
                            style: paragraph2TextStyle.copyWith(
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '**** **** **** 1234',
                            style: h2TextStyle.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Pay Bill',
                    style: h3TextStyle.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      // This next line does the trick.
                      children: [
                        Column(
                          children: [
                            Glassmorphism(
                              blur: 15,
                              opacity: 0.2,
                              radius: 20,
                              border: 1.5,
                              child: Container(
                                  height: 64,
                                  width: 64,
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset(
                                    "assets/img/Pulsa 1.png",
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Phone',
                              style: subhead3TextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cart()),
                                );
                              },
                              child: Glassmorphism(
                                border: 1.5,
                                blur: 15,
                                opacity: 0.2,
                                radius: 20,
                                child: Container(
                                    height: 64,
                                    width: 64,
                                    padding: const EdgeInsets.all(20),
                                    child: Image.asset(
                                      "assets/img/game.png",
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Game',
                              style: subhead3TextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            Glassmorphism(
                              border: 1.5,
                              blur: 15,
                              opacity: 0.2,
                              radius: 20,
                              child: Container(
                                  height: 64,
                                  width: 64,
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset(
                                    "assets/img/Data 1.png",
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Wifi',
                              style: subhead3TextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            Glassmorphism(
                              border: 1.5,
                              blur: 15,
                              opacity: 0.2,
                              radius: 20,
                              child: Container(
                                  height: 64,
                                  width: 64,
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset(
                                    "assets/img/PLN 1.png",
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Electricity',
                              style: subhead3TextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            Glassmorphism(
                              border: 1.5,
                              blur: 15,
                              opacity: 0.2,
                              radius: 20,
                              child: Container(
                                  height: 64,
                                  width: 64,
                                  padding: const EdgeInsets.all(20),
                                  child: Image.asset(
                                    "assets/img/BPJS 1.png",
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Insurance',
                              style: subhead3TextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Last Transaction',
                    style: h3TextStyle.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Glassmorphism(
                    border: 1.5,
                    blur: 15,
                    opacity: 0.2,
                    radius: 20,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today, June 30',
                            style: h7TextStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                      'assets/img/Badges.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Top Up',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '08:00',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white38),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                '+Rp 600.000',
                                style: h7TextStyle.copyWith(
                                    color: Color(0xff77FF95)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                      'assets/img/Badges(1).png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Buy Tokopedia',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '08:00',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white38),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                '-Rp 2.000.000',
                                style: h7TextStyle.copyWith(
                                    color: Color(0xffFFADAD)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Glassmorphism(
                    border: 1.5,
                    blur: 15,
                    opacity: 0.2,
                    radius: 20,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yesterday, June 29',
                            style: h7TextStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                      'assets/img/Badges.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Top Up',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '08:00',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white38),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                '+Rp 600.000',
                                style: h7TextStyle.copyWith(
                                    color: Color(0xff77FF95)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                      'assets/img/Badges(1).png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Buy Tokopedia',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '08:00',
                                        style: h7TextStyle.copyWith(
                                            color: Colors.white38),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                '-Rp 2.000.000',
                                style: h7TextStyle.copyWith(
                                    color: Color(0xffFFADAD)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      'See all...',
                      style: h7TextStyle.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
