import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Login());
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("LOGIN PAGE"),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email id",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 40,
                    width: 300,
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white),
                        onPressed: (){},
                        child: Text("Login")
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 40,
                    width: 300,
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            foregroundColor: Colors.white),
                        onPressed: (){},
                        child: Text("Go to signup")
                    )
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
