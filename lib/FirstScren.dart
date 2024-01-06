import 'package:flutter/material.dart';
import 'package:untitled/SecondScreen.dart';
import 'package:untitled/modalfile/UserModel.dart';

import 'AddPage.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [


        ],
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: ListView.builder(
             itemCount: user.length,
            itemBuilder: (context,index){
             return Column(
               children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(user: user[index],)));
                   },
                   child: Hero(
                     tag: user[index].name,
                     child:  ListTile(
                       title: Text(user[index].name),
                     ),
                   ),
                 ),
                 ElevatedButton(onPressed: (){
                   setState(() {
                       user.removeAt(index);

                   });
                 }, child: Text('delete')),
                 IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPage()));
                 }, icon: Text("add"))
               ],
             );
        }
        ),
      ),
    );
  }
}
