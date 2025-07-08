import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Viewstudents extends StatefulWidget {
  const Viewstudents({super.key});

  @override
  State<Viewstudents> createState() => _ViewstudentsState();
}

class _ViewstudentsState extends State<Viewstudents> {//dynamic_to_take_all_type_of_ip_values,if_only_str_ip_thenList<Map<String,String>>
  //api_link_to_call_the_api_to_load_the_required_data_to_the_app
  List<Map<String,dynamic>> student=[

  ];
  Future<void> fetchStudentData() async{//here_apiurl_is_a_variable
    final apiurl=Uri.parse("https://logix-space-course-app-1.onrender.com/getdata");
    try{
      final response =await http.get(apiurl);
      //api_calling_function_get_for_viewing_already_given_in_doc_if_
      // addstudent_api_link_need_add_then_give_Coressponding_method_ind_doc_here_post
      if(response.statusCode==200)
        {
          List data=json.decode(response.body);
          setState(() {
            student=List<Map<String,dynamic>>.from(data);
          });
          print("API called sucessfully");
        }
      else{
        throw Exception("Failed to fetch api data");
      }
    }
    catch (exception){print(exception);
    }

  }
  @override
  void initState() {//just_type_init_and_this_void_func_appear
    // TODO: implement initState
    super.initState();
    fetchStudentData();
  }
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: student.length,
        itemBuilder: (context,index){
      return Card(
        elevation: 4,
        child: ListTile(
          title: Text(student[index]["firstname"]),
          subtitle: Text(
              student[index]["lastname"]+"\n"+
                  student[index]["college"]+"\n"+
                  student[index]["dob"]+"\n"+
                  student[index]["course"]+"\n"+
                  student[index]["mobile"]+"\n"+
                  student[index]["email"]+"\n"+
                  student[index]["address"]
          ),

          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://st2.depositphotos.com/5593754/8693/v/950/depositphotos_86930520-stock-illustration-information-book-icon.jpg"),
          ),
          trailing: Icon(Icons.more_vert),
        ),

      );

    });
    return const Placeholder();
  }
}
