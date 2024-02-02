import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
  const CustomWidgets({Key? key}) : super(key: key);

  Widget button(decoration){
    return TextFormField(
      decoration: decoration,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
