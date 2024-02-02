import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FrontEndUser extends StatefulWidget {
  const FrontEndUser({Key? key}) : super(key: key);

  @override
  State<FrontEndUser> createState() => _FrontEndUserState();
}

class _FrontEndUserState extends State<FrontEndUser> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (width > 700) {
            return Scaffold(
              body: GestureDetector(
                  onTap: () {
                    context.router.pushNamed('dash');
                  },
                  child: Text("FrontEndUser")),
            );
          }
          else {
            return Scaffold(
              body: GestureDetector(
                  onTap: () {
                    context.router.pushNamed('dash');
                  },
                  child: Text("FrontEndUser")),
            );
          }
        });
  }
}
