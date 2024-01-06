import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/modalfile/Textformfield.dart';
import 'package:untitled/modalfile/UserModel.dart';

import 'SecondScreen.dart';
class AddPage extends StatefulWidget {
   AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
   TextEditingController namecontroller= TextEditingController();

   TextEditingController lastcontroller= TextEditingController();

   TextEditingController agecontroller= TextEditingController();
   Random random=  Random();
   List<Color> randomColorList = List.generate(
     5,
         (index) => Color.fromRGBO(
       random.nextInt(256),
       random.nextInt(256),
       random.nextInt(256),
       1.0,
     ),
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          
          child: Column(
            children: [
               Input(namecontroller: namecontroller, hinttext: 'name', labeltext: 'name'),
              Input(namecontroller: lastcontroller, hinttext: 'last', labeltext: 'lastname'),
              Input(namecontroller: agecontroller, hinttext: 'age', labeltext: 'age'),
              ElevatedButton(onPressed: (){
                setState(() {
                     user.add(User(name: namecontroller.text, age: int.parse(agecontroller.text), lastname: lastcontroller.text));

                });

              }, child: Text('add')),
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
