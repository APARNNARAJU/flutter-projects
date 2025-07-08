import 'package:counter_app/pages/Addstu.dart';
import 'package:counter_app/pages/Viewstuds.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menusys extends StatefulWidget {
  const Menusys({super.key});

  @override
  State<Menusys> createState() => _MenusysState();
}

class _MenusysState extends State<Menusys> {
  final List<Widget> pages=[Addstudent(),Viewstudents()];
  int currentval=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students"),
      leading: GestureDetector(
        onTap: (){
          print("logo clicked");
        },
        child: Icon(Icons.account_box_outlined),
      ),
      ),
      body: pages[currentval],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentval,onTap: (index){
        setState(() {
          currentval=index;
        });
      },
          items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
        label: "Add students"),
        BottomNavigationBarItem(
            icon: Icon(Icons.view_comfortable_rounded),
        label: "View all students"),
      ]),
    );
    return const Placeholder();
  }
}
