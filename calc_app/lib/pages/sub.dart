import 'package:calc_app/pages/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String output="0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Scaffold(
          appBar: AppBar(title: Text("SUBTRACTION"),),
          body: Container(decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              Color(0xffC8D9E6),
              Color(0xffC8D9E6),
            ]),
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: num1,
                  decoration: InputDecoration(hintText: "Enter 1st number",hintStyle: TextStyle(color: Colors.black38),
                      labelText: "FIRST NUMBER",border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.confirmation_number_outlined),prefixIconColor: Colors.blueGrey
                  ),
                ),SizedBox(height: 20,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(hintText: "Enter 2nd number",hintStyle: TextStyle(color: Colors.black38),
                      labelText: "SECOND NUMBER",border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.confirmation_number_outlined),prefixIconColor: Colors.blueGrey
                  ),
                ),SizedBox(height: 20,),
                SizedBox(
                  height: 50,width: 200,
                  child: ElevatedButton(onPressed: (){
                    String getnum1 = num1.text;
                    String getnum2 = num2.text;
                    int Result=int.parse(getnum1)-int.parse(getnum2);
                    setState(() {
                      output=Result.toString();
                    });
                  }, child: Text("Subtract",style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        foregroundColor: Colors.white),
                  ),),
                SizedBox(height: 30),
                Text("Result: "+output,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 30),
                SizedBox(
                  height:50,
                  width:200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Return to Menu",style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        foregroundColor: Colors.white),
                  ),

                )
              ],
            ),
          ),
        ),

      ),


    );
    return const Placeholder();
  }
}
