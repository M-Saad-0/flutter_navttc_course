import 'package:apr_22_24/constant/const_color.dart';
import 'package:apr_22_24/view/screens/components/gradients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  static const TextStyle style =
      TextStyle(color: const Color.fromARGB(119, 0, 0, 0), fontSize: 12);
  List<Widget> listOfWidgets = <Widget>[
    Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Home_Page.png"),
              fit: BoxFit.fill)),
      child: Obx(() {
        var count = 0.obs;
        return Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Break",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            "Videos",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Rooms",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(163, 255, 255, 255)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.notifications, color: Colors.white)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Tiktoker",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(0, 255, 255, 255),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Followed",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enjoy the abstract video for you weeknd",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(171, 255, 255, 255)),
                            ),
                            Text(
                              "#enjoy #desert #alone",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(171, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/images/song_page.jpg"),
                          ),
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                          ),
                          Text(
                            "Beautiful Song very very very",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Divider(
                            height: 5.h,
                            thickness: 5.w,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
                right: 10,
                bottom: 70,
                child: Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              count++;
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Heart.svg',
                                  height: 26.67.h,
                                  width: 26.67.w,
                                  color: Colors.red,
                                ),
                                Text(
                                  "15.7k",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Icon(Icons.message, color: Colors.white),
                          Text("1542", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Icon(Icons.telegram, color: Colors.white),
                          Text("7488", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Icon(Icons.bookmark, color: Colors.white),
                          Text("7438", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          Icon(Icons.card_giftcard, color: Colors.white),
                          Text("12", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                )),
          ],
        );
      }),
    ),
    Text(
      "data1",
      style: style,
    ),
    Text(
      "data2",
      style: style,
    ),
    Text(
      "data3",
      style: style,
    ),
    Text(
      "data5",
      style: style,
    )
  ];
  void ontap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: bottomNavBarColor),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(_index == 0
                    ? AssetImage("assets/icons/homeSelected.png")
                    : AssetImage("assets/icons/homeUnselected.png")),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(_index == 1
                    ? AssetImage("assets/icons/exploreSelected.png")
                    : AssetImage("assets/icons/exploreUnselected.png")),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                      gradient: gradientStyle,
                      borderRadius: BorderRadius.circular(5)),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/chatUnselected.png")),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Container(
                  child: CircleAvatar(
                    child: Image.asset("assets/icons/profile.png"),
                  ),
                ),
                label: "Profile")
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: ontap,
          backgroundColor: bottomNavBarColor,
          unselectedItemColor: buttonColor,
          selectedItemColor: Colors.white,
          elevation: 0.0,
          enableFeedback: false,
        ),
      ),
      body: listOfWidgets.elementAt(_index),
    );
  }
}
