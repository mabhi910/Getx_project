import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class KanlianUser extends StatefulWidget {
  const KanlianUser({Key? key}) : super(key: key);

  @override
  State<KanlianUser> createState() => _KanlianUserState();
}

class _KanlianUserState extends State<KanlianUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :GestureDetector(
          onTap: (){
            context.router.pushNamed('dash');
          },
          child: Text("Kanlian User")),
    );
  }
}
