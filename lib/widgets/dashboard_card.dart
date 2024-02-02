import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DashCard extends StatelessWidget {
  final Color backgroundColour;
  final upperIcon;
  final String numbers;
  final String text;

  const DashCard({super.key, required this.backgroundColour, required this.upperIcon, required this.numbers, required this.text});
  final String pathName = 'images/Path.svg';
  final String pathName2 = 'images/Path2.svg';
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: 190,
      margin: EdgeInsets.only(right: 10),
      
      decoration: BoxDecoration(
        color: backgroundColour,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white30,
              radius: 16,
              child: upperIcon,
              // child: Icon(Icons.directions_boat_filled_sharp,color: Colors.white,size: 20,),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex:2,
                    child: Text(numbers, style: TextStyle(
                        fontSize: width>=700?48:30, color: Colors.white60,),),
                  ),
                  Stack(children: [
                    SvgPicture.asset(pathName2),
                    SvgPicture.asset(pathName)
                  ]),
                ],
              ),
            ),
            Text(text,
                style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))

          ],
        ),
      ),
    );
  }
}
