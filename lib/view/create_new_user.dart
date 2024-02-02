import 'package:admin/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../temp/user_roles.dart';
import '../widgets/custom_dropdown.dart';

class CreateNewUser extends StatefulWidget {
  const CreateNewUser({Key? key}) : super(key: key);

  @override
  State<CreateNewUser> createState() => _CreateNewUserState();
}

class _CreateNewUserState extends State<CreateNewUser> {
  String route = '';
  List<String> list = ['All', 'Vishal', 'Abhishek'];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var data = TempData().user;

    return LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (width > 700) {
            print("sdfads${ width * 0.185}      987");
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: Container(
                  height: height,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create New User",
                        style: TextStyle(fontSize: 24, color: Colors.black54),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name", style: TextStyle(
                                  fontSize: 14, color: Colors.black54),),
                              SizedBox(height: 5,),
                              Container(
                                height: height * 0.06,
                                width: width*0.22,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Name",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email", style: TextStyle(
                                  fontSize: 14, color: Colors.black54),),
                              SizedBox(height: 5,),
                              Container(
                                height: height * 0.06,
                                width: width*0.22,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.topLeft,
                          width: width*0.22,
                          child: CustomDropDown(titleText: 'Assign Role',
                              hintText: 'Operator',
                              fun: (value) {},
                              list: list)),
                      SizedBox(height: 40,),
                      // Container(
                      //   width: width*0.22,
                      //   height: height * 0.06,
                      //   color: Colors.red,
                      //   child: Center(child: Text("Save", style: TextStyle(
                      //       color: Colors.white),)),
                      //
                      // )
                      Container(
                        height: 50,
                        width: 200,
                        child: CustomButton(text: 'Save', backgroundColor: Color(0xFFf02414), onPressed: (){
                          print("Saved in hell");
                        }),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          else {
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.all(width * 0.02),
                child: Container(
                  height: height,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Create New User",
                        style: TextStyle(fontSize: 24, color: Colors.black54),),
                      SizedBox(height: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: TextStyle(
                              fontSize: 14, color: Colors.black54),),
                          SizedBox(height: 5,),
                          Container(
                            height: height * 0.06,
                            width: width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email", style: TextStyle(
                              fontSize: 14, color: Colors.black54),),
                          SizedBox(height: 5,),
                          Container(
                            height: height * 0.06,
                            width: width,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder()
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.topLeft,
                          width: width,
                          child: CustomDropDown(titleText: 'Assign Role',
                              hintText: 'Operator',
                              fun: (value) {},
                              list: list)),
                      SizedBox(height: 40,),
                      Container(
                        width: width,
                        height: 50,
                        child: CustomButton(text: 'Save', backgroundColor: Color(0xFFf02414), onPressed: (){
                          print("Saved in hell");
                        }),

                      )
                    ],
                  ),
                ),
              ),
            );

          }
        }
    );
  }


}
