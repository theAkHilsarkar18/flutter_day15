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

  // image object declaration

  List diceImg = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
  ];

  // list for image

  List diceValue = [];

  // list for random value for dice
  List rndDiceValue = [];

  // color hide

  Color c1 = Color(0xffF5EDED);
  Color c2 = Color(0xffF5EDED);
  Color c3 = Colors.black;
  Color c4 = Colors.black38;

  // random value
  int rndValue = 0;

  // sum
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appbar
        appBar: AppBar(
          leading: Icon(
            Icons.all_inclusive,
            size: 30,
            color: Color(0xffF5EDED),
          ),
          title: Text("Dice App",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 24,
                color: Color(0xffF5EDED),
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                color: Color(0xffF5EDED),
                Icons.refresh,
                size: 28,
              ),
            )
          ],
          backgroundColor: Color(0xff000000),
        ),

        // body

        body: Column(
          children: [
            // text field
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: t1,
                style: TextStyle(color: Colors.black, letterSpacing: 2),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    label: Text("Enter Total Dice Value..",
                        style:
                            TextStyle(letterSpacing: 2, color: Colors.black)),
                    //labelText: "Enter Total Dice Value ..",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xff000000),
                        ))),
              ),
            ),

            // generate dice

            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  var tx = t1.text;
                  int n = int.parse(tx);
                  diceValue.clear();
                  setState(() {
                    for (int j = 0; j < n; j++) {
                      diceValue.add(0);
                      rndDiceValue.add(0);
                    }
                  });
                  //unhide play button
                  c1 = c4;
                  c2 = c3;
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38, spreadRadius: 2, blurRadius: 2)
                    ],
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Generate",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2,
                      color: Color(0xffF5EDED),
                    ),
                  ),
                ),
              ),
            ),

            // dice generation loop
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: diceValue
                    .asMap()
                    .entries
                    .map((e) => Image.asset(
                          diceImg[
                              rndDiceValue.isEmpty ? 0 : rndDiceValue[e.key]],
                          height: 100,
                          width: 100,
                        ))
                    .toList(),
              ),
            ),

            // play button

            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  var tx = t1.text;
                  int n = int.parse(tx);
                  var rnd = Random();

                  rndDiceValue.clear();
                  sum = 0;
                  print("\n");

                  setState(() {
                    for (int j = 0; j < n; j++) {
                      rndValue = rnd.nextInt(6);
                      rndDiceValue.add(rndValue);
                      int s1 = rndDiceValue[j];
                      sum = sum + s1 + 1;
                    }
                    print("$sum");
                    print(rndDiceValue);
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: c1, spreadRadius: 2, blurRadius: 3)
                    ],
                    color: c2, //Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Play",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2,
                      color: Color(0xffF5EDED),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text("Sum is",
                    style: TextStyle(fontSize: 20, letterSpacing: 2)),
              ),
            ),

            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Text("$sum",
                  style: TextStyle(fontSize: 20, letterSpacing: 2)),
            ),
          ],
        ),

        // background colur
        backgroundColor: Color(0xffF5EDED),
      ),
    );
  }
}
