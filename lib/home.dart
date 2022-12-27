import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // textfield
  TextEditingController t1 = TextEditingController();
  int diceVlaue = 0;

  // image object declaration

  List l1 = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
  ];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5EDDC),
          leading:
              Icon(Icons.all_inclusive, size: 30, color: Color(0xffEB1D36)),
          title: Text(
            "Dice App",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 5,
              color: Color(0xffEB1D36),
              fontSize: 24,
            ),
          ),
        ),

        // body part ui

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // row for dice value

            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 75,
                  width: 480,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF5EDDC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "How many Dice you want ?",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 3,
                            color: Color(0xffEB1D36),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          height: 65,
                          width: 60,
                          child: TextField(
                            controller: t1,
                            maxLength: 1,
                            showCursor: false,
                            cursorColor: Color(0xffEB1D36),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "0",
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xffEB1D36),
                                        style: BorderStyle.solid,
                                        width: 2),
                                    borderRadius: BorderRadius.circular(15)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffEB1D36)),
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            style: TextStyle(
                                color: Color(0xffEB1D36),
                                letterSpacing: 2,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: InkWell(
                                onTap: () {

                                  String valueFromText = t1.text;
                                  diceVlaue = int.parse(valueFromText);

                                  setState(() {

                                 // print("$diceVlaue");

                                  });

                                },
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffFA9494),
                                  ),
                                  child: Icon(Icons.casino, size: 30),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text("click",
                                style: TextStyle(letterSpacing: 2)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // row for show dice

            Column(
              children: [
                // row 1 , max 3 dice
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                // row 2 , max 3 dice
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            var rnd = Random();
                            setState(() {
                              i = rnd.nextInt(5);
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(l1[i]),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
        backgroundColor: Color(0xffCFD2CF),
      ),
    );
  }
}
