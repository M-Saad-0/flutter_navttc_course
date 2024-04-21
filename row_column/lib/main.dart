import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "app",
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red, width: 5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_half_sharp),
                        ],
                      ),
                    ),
                    const Row(
                      children: [Text("123"), Text("Rviews")],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.mobile_screen_share),
                        Text("Mobile"),
                        Text("data"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flutter_dash),
                        Text("Flutter"),
                        Text("Good"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.laptop),
                        Text("laptop"),
                        Text("data"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}


























// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("AppBar"),
//       ),
//       body: Container(
//           width: double.infinity,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10.0),
//             color: Color.fromARGB(255, 140, 158, 126),
//           ),
//           child: Container(
//             child: const Row(
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Icon(Icons.arrow_back_ios),
//                       Icon(Icons.laptop),
//                       Icon(Icons.mobile_friendly),
//                       Icon(Icons.account_tree),
//                       Icon(Icons.airplanemode_active),
//                       Icon(Icons.arrow_forward_outlined),
//                     ],
//                   ),
//                 ),
//                 Text("Text"),
//               ],
//             ),
//           )),
//     );
//   }
// }
























// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gradient Container'),
//       ),
//       body: SizedBox(
//           width: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 width: 150,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   // boxShadow: [
//                   //   const BoxShadow(
//                   //     const Color(de),
//                   //     offset: Offset(5, 5),
//                   //     blurRadius: 0.0,
//                   //   )
//                   // ],
//                   gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color.fromARGB(255, 115, 255, 0),
//                       Color.fromARGB(255, 40, 40, 223),
//                     ],
//                   ),
//                 ),
//                 child: const Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                         'Hello World!',
//                         style: TextStyle(fontSize: 24.0, color: Colors.white, fontFamily: ),
//                       ),
//                         ],
//                       ),
//                       Text(
//                         "This is a new package",
//                         style: TextStyle(fontSize: 16.0, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 150,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   // boxShadow: [
//                   //   const BoxShadow(
//                   //     const Color(de),
//                   //     offset: Offset(5, 5),
//                   //     blurRadius: 0.0,
//                   //   )
//                   // ],
//                   gradient: const LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color.fromARGB(255, 115, 255, 0),
//                       Color.fromARGB(255, 40, 40, 223),
//                     ],
//                   ),
//                 ),
//                 child: const Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Hello World!',
//                         style: TextStyle(fontSize: 24.0, color: Colors.white),
//                       ),
//                       Text(
//                         "This is a new package",
//                         style: TextStyle(fontSize: 16.0, color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )),
//     );
//   }
// }

// class buttons extends StatelessWidget {
//   const buttons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
