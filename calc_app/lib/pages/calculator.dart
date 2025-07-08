import 'package:calc_app/pages/add.dart';
import 'package:calc_app/pages/div.dart';
import 'package:calc_app/pages/prod.dart';
import 'package:calc_app/pages/sub.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color(0xffE5E0D8),
        Color(0xff163832),
      ]),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("CALCULATOR",style: TextStyle(fontSize: 30,color: Colors.white),),
          SizedBox(height: 10,),
          Center(
            child: SizedBox(
                height:100,
                width: 300,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Add()));
                }, child: Text("Addition"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Color(0xff163832),
                      foregroundColor: Colors.white),)),
          ),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Sub()));}, child: Text("Subtraction"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Color(0xff163832),
                      foregroundColor: Colors.white))),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Prod()));
              }, child: Text("Multiplication"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Color(0xff163832),
                      foregroundColor: Colors.white))),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Div()));
              }, child: Text("Division"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Color(0xff163832),
                      foregroundColor: Colors.white))),
          SizedBox(height:20),
        ],
      ),
    );
  }
}