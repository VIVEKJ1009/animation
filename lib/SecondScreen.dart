import 'package:flutter/material.dart';

import 'modalfile/UserModel.dart';
class SecondScreen extends StatelessWidget {
   final User user;
  const SecondScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Text(user.name),
        ),
    );
  }
}
