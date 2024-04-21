import 'package:flutter/material.dart';
import 'package:new_project/components/buttonWidget.dart';
import 'package:new_project/constant/constant_colors.dart';

class bottomSheet extends StatefulWidget {
  final String text1, text2;
  const bottomSheet({super.key, required this.text1,  required this.text2});

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}


class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(widget.text1, style: TextStyle(color: text_color, fontSize: 20, fontWeight: FontWeight.w700),),
                    Text(widget.text2, style: TextStyle(fontSize: 12, color: text_color),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        button(onPressed:(){print("Press it haeder");},buttonText:"Proceed", height: 50, width: 100, c1: white_color, c2: white_color, textColor: blue_color),
                        SizedBox(width: 10,),
                        button(onPressed:(){Navigator.pop(context);},buttonText:"Cancel", height: 50, width: 100, c1: cyan_color, c2: blue_color, textColor: white_color)
                      ],
                    ),
                  
                  ],           
                  ),
                ),
              
              );
            },barrierColor:Color.fromARGB(221, 0, 0, 0).withOpacity(1),elevation: 8.9);
          }, child: Text("Data")),
        ],),
      )
    );
  }
}
