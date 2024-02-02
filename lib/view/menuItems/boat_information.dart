import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BoatInformation extends StatefulWidget {
  const BoatInformation({Key? key}) : super(key: key);

  @override
  State<BoatInformation> createState() => _BoatInformationState();
}

class _BoatInformationState extends State<BoatInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: (){
            context.router.pushNamed('projects');
          },
          child: Text("BoatInformation")),
    );
  }
}
