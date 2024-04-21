import 'package:flutter/material.dart';

class customCourseBox extends StatelessWidget {
  final String courseName, duration, completion;
  const customCourseBox(
      {super.key,
      required this.completion,
      required this.courseName,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseName,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.timelapse),
                    Text(
                      duration,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    )
                  ],
                ),
                Icon(Icons.rocket)
              ],
            ),
            Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(114, 244, 67, 54),
                    borderRadius: BorderRadius.circular(3)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(completion),
                ))
          ],
        ),
      ),
    );
  }
}
