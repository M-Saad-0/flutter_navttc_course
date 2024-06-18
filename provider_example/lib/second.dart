import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
      builder: (context, value, child) => SafeArea(
          child: Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: value.number.last,
              itemBuilder: (context, i) => Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.person_2),
                        trailing: Icon(Icons.play_arrow),
                        title: Text(value.number[i].toString()),
                      ),
                    ),
                  )),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            value.add();
          },
        ),
      )),
    );
  }
}
