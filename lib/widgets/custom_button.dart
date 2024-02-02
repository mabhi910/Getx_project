import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final onPressed;

  const CustomButton({super.key, required this.text, required this.backgroundColor,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius
            .circular(5), color: backgroundColor,),
        child: Text(text,
          style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'Rubix'),

        ),
      ),

    );
  }
}
