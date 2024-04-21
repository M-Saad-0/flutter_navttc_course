import 'package:flutter/material.dart';

class myProfile extends StatefulWidget {
  const myProfile({super.key});

  @override
  State<myProfile> createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profile_image.jpg"),
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Alan Kannedies",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Text(
                      "@alan.k891",
                      style: TextStyle(
                          color: const Color.fromARGB(136, 255, 255, 255)),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.notification_add,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
