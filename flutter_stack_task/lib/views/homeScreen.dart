import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_stack_task/contants/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF9C53D6),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 60,
                          right: 100,
                          child: EmptyContainer(
                            height: 50,
                            width: 50,
                          )),
                      Positioned(
                          top: -10,
                          left: -60,
                          child: EmptyContainer(
                            height: 150,
                            width: 150,
                          )),
                      Positioned(
                          top: 100,
                          right: -130,
                          child: EmptyContainer(
                            height: 200,
                            width: 200,
                          )),
                      Positioned(
                          top: -140,
                          left: 150,
                          child: EmptyContainer(
                            height: 200,
                            width: 200,
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: EmptyContainer(
                          height: 200,
                          width: 200,
                          txt: EmptyContainer(
                            height: 180,
                            width: 180,
                            clr: Color.fromARGB(255, 189, 132, 235),
                            txt: EmptyContainer(
                              height: 160,
                              width: 160,
                              clr: Color.fromARGB(255, 193, 139, 238),
                              txt: EmptyContainer(
                                height: 140,
                                width: 140,
                                clr: Color.fromARGB(255, 253, 252, 254),
                                txt: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Your Score",
                                      style: styleNormal,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "150",
                                            style: styleBold,
                                            children: [
                                          TextSpan(
                                              text: "pt", style: styleMiddle)
                                        ]))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Container(
                    height: 220,
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BottomButtons(
                                clr: Color(0xff4C92AF),
                                icon: Icon(Icons.refresh, color: Colors.white),
                                txt: "Play again"),
                            BottomButtons(
                                clr: Color(0xff0099EC),
                                icon: Icon(Icons.document_scanner,
                                    color: Colors.white),
                                txt: "Generate PDF"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BottomButtons(
                                clr: Color(0xffC68B69),
                                icon:
                                    Icon(Icons.visibility, color: Colors.white),
                                txt: "Review answers"),
                            BottomButtons(
                                clr: Color(0xffBE6999),
                                icon: Icon(Icons.home, color: Colors.white),
                                txt: "Home"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BottomButtons(
                                clr: Color(0xff755ED0),
                                icon: Icon(Icons.share, color: Colors.white),
                                txt: "Share answers"),
                            BottomButtons(
                                clr: Color(0xff73758D),
                                icon: Icon(Icons.star, color: Colors.white),
                                txt: "Leaderboard")
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: double.infinity,
              child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 238, 230, 244),
                  ),
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnContent(
                                clr: Color(0xFF9C53D6),
                                txt1: "100%",
                                txt2: "Completion"),
                            ColumnContent(
                                clr: Colors.green, txt1: "13", txt2: "Correct"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnContent(
                                clr: Color(0xFF9C53D6),
                                txt1: "20",
                                txt2: "Total Questions"),
                            ColumnContent(
                                clr: Colors.red, txt1: "7", txt2: "Wrong")
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class EmptyContainer extends StatelessWidget {
  final Widget? txt;
  final double height, width;
  final Color clr;
  const EmptyContainer(
      {super.key,
      this.txt,
      required this.height,
      required this.width,
      this.clr = const Color.fromARGB(255, 185, 118, 239)});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        child: txt,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: clr, borderRadius: BorderRadius.circular(width / 2)),
      ),
    );
  }
}

class ColumnContent extends StatelessWidget {
  final Color clr;
  final String txt1, txt2;
  const ColumnContent(
      {super.key, required this.clr, required this.txt1, required this.txt2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.hdr_strong,
                color: clr,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                txt1,
                style: TextStyle(
                    fontSize: 16, color: clr, fontWeight: FontWeight.w900),
              )
            ],
          ),
          Text(txt2)
        ],
      ),
    );
  }
}

class BottomButtons extends StatelessWidget {
  final Color clr;
  final Icon icon;
  final String txt;
  const BottomButtons(
      {super.key, required this.clr, required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          CircleAvatar(
            child: icon,
            backgroundColor: clr,
          ),
          Text(txt)
        ],
      ),
    );
  }
}
