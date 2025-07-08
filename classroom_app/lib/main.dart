import 'package:classroom_app/pages/Gmenu.dart';
import 'package:classroom_app/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Gclassroom());
}

class Gclassroom extends StatelessWidget {
  const Gclassroom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Classroom Replica',
      home: Scaffold(
        drawer: const CustomDrawer(selectedIndex: 0),
        appBar: AppBar(
          title: Row(
            children: [Icon(Icons.class_, color: Colors.green, size: 28), // 👈 replace with this
          SizedBox(width: 10),
          Text(
            "Classroom",
            style: TextStyle(color: Colors.black),),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: const Gmenu(),
      ),
    );
  }
}
