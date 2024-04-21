import 'package:flutter/material.dart';
import 'package:new_project/components/bottomSheet.dart';
import 'package:new_project/components/buttonWidget.dart';
import 'package:new_project/constant/constant_colors.dart';
import 'package:new_project/constant/constant_textStyle.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bottomSheet(text1: "Flutter Module", text2: "Lore Ipsum"*15,),
          SizedBox(height: 10,),
          button(onPressed: (){
              showDialog(context: context, builder: (context){
                      return AlertDialog(
                        icon: Icon(Icons.dangerous, size: 50, color: danger_color,),
                        title: Column(children: [Text("Warning", style: style1,),
                        SizedBox(height: 10,),
                        Text("Your device is in danger and your files are not safe press the button button below.", style: style2,),
                        SizedBox(height: 10,),
                        button(onPressed: (){Navigator.pop(context);}, buttonText: "Scan", height: 30, width: 80, c1: green_color, c2: yellow_color, textColor: white_color)
                        ],)
                      );
                    });
            }, buttonText: "Show Dialog", height: 50, width: 100, c1: blue_color, c2: cyan_color, textColor: white_color)
        ],
      ),
    );
  }
}