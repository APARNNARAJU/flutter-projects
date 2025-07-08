import 'package:calc_app/pages/add.dart';
import 'package:calc_app/pages/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Calc());
}
class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: homepage(),
      ),
    );
    return const Placeholder();
  }
}
