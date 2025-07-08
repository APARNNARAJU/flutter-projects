import 'package:counter_app/pages/mainmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{ runApp(Counterapp());}
class Counterapp extends StatelessWidget {
  const Counterapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Menusys(),
      ),
    );
    return const Placeholder();
  }
}

