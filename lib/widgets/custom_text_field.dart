import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String titleText;
  final String? hintText;
  final TextEditingController controller;
  final IconData? icon;
  final TextInputType inputType;
  final inputFormate;

  const CustomTextField({super.key,  this.hintText, required this.controller, this.icon, required this.inputType, required this.titleText, this.inputFormate});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF2E384D)),),
        SizedBox(height: 5,),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            suffixIcon: Icon(icon),
          ),
          inputFormatters: inputFormate
        ),
      ],
    );
  }
}
