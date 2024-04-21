import "package:flutter/material.dart";

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({super.key});

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataTable(
                border: TableBorder.all(color: Color.fromARGB(255, 38, 255, 0)),
                columns: [
                  DataColumn(label: Text("Data-1")),
                  DataColumn(label: Text("Data-2")),
                  DataColumn(label: Text("Data-3"))
                ],
                rows: <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text(":")),
                    DataCell(Text(":")),
                    DataCell(Text(":"))
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text(":")),
                    DataCell(Text(":")),
                    DataCell(Text(":"))
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text(":")),
                    DataCell(Text(":")),
                    DataCell(Text(":"))
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text(":")),
                    DataCell(Text(":")),
                    DataCell(Text(":"))
                  ])
                ]),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Are you sure? "),
                    action: SnackBarAction(label: "Undo", onPressed: () {}),
                  ));
                },
                child: Text(" - ")),
            // CircularProgressIndicator(),
            // LinearProgressIndicator()
          ],
        ),
      ),
    );
  }
}
