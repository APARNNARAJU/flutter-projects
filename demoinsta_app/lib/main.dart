import 'package:demoinsta_app/pages/instafeed.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Instagram());
}
class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.pink,
        ),
        body:Instagramfeed()
      ),
    );
    return const Placeholder();
  }
}
