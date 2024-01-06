import 'package:flutter/material.dart';
class Input extends StatelessWidget {
   TextEditingController namecontroller= TextEditingController();
   var labeltext;
   var hinttext;

   Input({super.key,required this.namecontroller,required this.hinttext,required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: namecontroller,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hinttext,
        border: OutlineInputBorder(
           borderSide: BorderSide(
             width: 20,
             color: Colors.red
           )
        )
      ),

    );
  }
}
