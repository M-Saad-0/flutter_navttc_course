import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/provider.dart';
import 'package:tailor_app/second.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: value.number.last,
                    itemBuilder: (context, index) => Card(
                          child: ListTile(
                            leading: Icon(Icons.person),
                            title: Text(value.number[index].toString()),
                            trailing: Icon(Icons.stop),
                          ),
                        ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text("  :  "))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            value.add();
          },
        ),
      ),
    );
  }
}
