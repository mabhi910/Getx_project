import 'package:admin/Routing/routing.gr.dart';
import 'package:admin/temp/user_roles.dart';
import 'package:admin/widgets/custom_dropdown.dart';
import 'package:admin/widgets/custom_table_roles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class UserRolesAccess extends StatefulWidget {
  const UserRolesAccess({Key? key}) : super(key: key);

  @override
  State<UserRolesAccess> createState() => _UserRolesAccessState();
}

class _UserRolesAccessState extends State<UserRolesAccess> {
  final TextEditingController _webdatetoController = TextEditingController();
  final TextEditingController _webdatefromController = TextEditingController();
  final TextEditingController _mobiledatetoController = TextEditingController();
  final TextEditingController _mobiledatefromController = TextEditingController();
  List<String> list=['All','Vishal','Abhishek'];
  String route = '';
  @override
  Widget build(BuildContext context) {
    route = ModalRoute.of(context)!.settings.name.toString();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var data=TempData().user;
    return LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints){
      if (width > 700) {
        print("sdfads${ width * 0.185} 987");
        return Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: GestureDetector(
              onTap: () {
                context.router.pushNamed('projects');
              },
              child: Container(margin: EdgeInsets.all(50),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //         child: Text("User Roles & Access",
                      //             style: TextStyle(
                      //                 fontSize: 24,
                      //                 fontFamily: 'rubix',
                      //                 color: Color(0xFF2E384D)))),
                      //     Container(
                      //       height: height * 0.06,
                      //       width: width * 0.13,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(5),
                      //         color: Colors.red,
                      //       ),
                      //       child: Center(
                      //         child: Text(
                      //           "Create New User",
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //         flex: 2,
                      //         child: Container(
                      //           height: 100,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment
                      //                 .start,
                      //             children: [
                      //               Text("Search"),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 height: 40,
                      //                 child: TextFormField(
                      //                   readOnly: true,
                      //                   decoration: InputDecoration(
                      //                       hintText: "Search by FG number.....",
                      //                       hintStyle: TextStyle(
                      //                         fontSize: 15,
                      //                         fontWeight: FontWeight.bold,
                      //                       ),
                      //                       border: OutlineInputBorder()),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         )),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 2,
                      //         child: Container(
                      //           height: 100,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment
                      //                 .start,
                      //             children: [
                      //               Text("Role"),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 height: 40,
                      //                 child: TextFormField(
                      //                   readOnly: true,
                      //                   decoration: InputDecoration(
                      //                       hintText: "All",
                      //                       suffixIcon: Icon(
                      //                         Icons.keyboard_arrow_down_sharp,
                      //                         size: 25,
                      //                       ),
                      //                       hintStyle: TextStyle(
                      //                           fontSize: 15,
                      //                           fontWeight: FontWeight.bold),
                      //                       border: OutlineInputBorder()),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         )),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 1,
                      //         child: Container(
                      //           height: 100,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment
                      //                 .start,
                      //             children: [
                      //               Text("Date"),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 height: 40,
                      //                 child: TextFormField(
                      //                   readOnly: true,
                      //                   decoration: InputDecoration(
                      //                       hintText: "To",
                      //                       hintStyle: TextStyle(
                      //                           fontSize: 15,
                      //                           fontWeight: FontWeight.bold),
                      //                       suffixIcon: InkWell(
                      //                           onTap: () {
                      //                             //Date Picker
                      //                           },
                      //                           child: Icon(
                      //                               Icons.date_range)),
                      //                       border: OutlineInputBorder()),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         )),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 1,
                      //         child: Container(
                      //           height: 100,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment
                      //                 .start,
                      //             children: [
                      //               Text(""),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 height: 40,
                      //                 child: TextFormField(
                      //                   readOnly: true,
                      //                   decoration: InputDecoration(
                      //                       hintText: "From",
                      //                       hintStyle: TextStyle(
                      //                           fontSize: 15,
                      //                           fontWeight: FontWeight.bold),
                      //                       suffixIcon: InkWell(
                      //                           onTap: () {
                      //                             // Date Picker
                      //                           },
                      //                           child: Icon(
                      //                               Icons.date_range)),
                      //                       border: OutlineInputBorder()),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         )),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 2,
                      //         child: Container(
                      //           height: 100,
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment
                      //                 .start,
                      //             children: [
                      //               Text("Status"),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 height: 40,
                      //                 child: TextFormField(
                      //                   decoration: InputDecoration(
                      //                       hintText: "All",
                      //                       suffixIcon: Icon(
                      //                         Icons.keyboard_arrow_down_sharp,
                      //                         size: 25,
                      //                       ),
                      //                       hintStyle: TextStyle(
                      //                           fontSize: 15,
                      //                           fontWeight: FontWeight.bold),
                      //                       border: OutlineInputBorder()),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         )),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.only(right: 50,
                      //           bottom: 10),
                      //       child: Container(
                      //         width: 40,
                      //         height: 40,
                      //         decoration: BoxDecoration(
                      //           color: Colors.blue.shade50,
                      //         ),
                      //         child: Icon(
                      //           Icons.refresh_sharp,
                      //           size: 28,
                      //           color: Colors.blue.shade900,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Text("User Roles & Access",
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold
                                      , color: Colors.black54))),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (){
                                context.router.push(CreateNewUser());
                              },
                              child: Container(
                                height: height * 0.06,
                                width: width * 0.13,

                                decoration: BoxDecoration(borderRadius: BorderRadius
                                    .circular(5), color: Colors.red,),
                                child: Center(
                                  child: Text("Create New User",
                                    style: TextStyle(color: Colors.white),

                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Search"),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    readOnly: false,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        hintText: "Search by FG number.....",
                                        hintStyle: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,),
                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(width: width*0.002,),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(top: height*0.01),
                              child: CustomDropDown(titleText: 'Role', hintText: 'All', fun: (value){}, list: list),
                            )),
                        SizedBox(width: width*0.002,),
                        Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date"),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    mouseCursor: MaterialStateMouseCursor.clickable,
                                    controller: _webdatetoController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        hintText: "To",
                                        hintStyle: TextStyle(fontSize: 15,
                                            fontWeight: FontWeight.bold),

                                        suffixIcon: GestureDetector(
                                            onTap: (){
                                              setState(() async {
                                                final DateTime? newDate = await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime(2020, 11, 17),
                                                  firstDate: DateTime(2001, 1),
                                                  lastDate: DateTime(2022, 7),
                                                  helpText: 'Select a date',
                                                );
                                                var dateTime = DateTime.parse("$newDate");
                                                var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                                _webdatetoController.text = _date;
                                              });
                                            },
                                            child: Icon(Icons.date_range)),

                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(width: width*0.005,),
                        Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(""),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    mouseCursor: MaterialStateMouseCursor.clickable,
                                    controller: _webdatefromController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        hintText: "From",
                                        hintStyle: TextStyle(fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        suffixIcon: GestureDetector(
                                            onTap: (){
                                              setState(() async {
                                                final DateTime? newDate = await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime(2020, 11, 17),
                                                  firstDate: DateTime(2001, 1),
                                                  lastDate: DateTime(2022, 7),
                                                  helpText: 'Select a date',
                                                );
                                                var dateTime = DateTime.parse("$newDate");
                                                var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                                _webdatefromController.text = _date;
                                              });
                                            },
                                            child: Icon(Icons.date_range)),
                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(width: width*0.002,),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(top: height*0.01),
                              child: CustomDropDown(titleText: 'Status', hintText: 'All', fun: (value){}, list: list),
                            )),
                        SizedBox(width: width*0.002,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50,top: 25),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(color: Colors.blue.shade50,
                            ),
                            child: Icon(Icons.refresh_sharp, size: 28,
                              color: Colors.blue.shade900,),
                          ),
                        ),
                      ],),
                      SizedBox(height: 20,),
                      CustomTableRoles(firstColoum: 'USERNAME', secondColoum: 'EMAIL', thirdColoum:'    ROLE    \nASSIGNED' , fourthColoum: 'STATUS',data: data,)
                    ],
                  ),
                ),
              )),
        );
      }
      else {
        return Scaffold(
            body: Container(margin: EdgeInsets.all(20),
              child:SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Search"),
                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  child: TextFormField(
                                    readOnly: false,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        hintText: "Search by FG number.....",
                                        hintStyle: TextStyle(fontSize: 15,
                                          fontWeight: FontWeight.bold,),
                                        border: OutlineInputBorder()
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: EdgeInsets.only(top: height*0.04),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(color: Colors.blueGrey.shade100,
                            ),

                            child: Icon(Icons.refresh_sharp, size: 28,
                              color: Colors.blue.shade900,),
                          ),
                        ),
                      ],),
                    Row(
                      children: [
                        Expanded(
                            flex: 10,
                            child: CustomDropDown(titleText: 'Role', hintText: 'All', fun: (value){}, list: list)),
                        Expanded(
                            flex: 11,
                            child: CustomDropDown(titleText: 'Status', hintText: 'All', fun: (value){}, list: list)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date"),
                                InkWell(
                                  onTap: (){
                                    setState(() async {
                                      final DateTime? newDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime(2020, 11, 17),
                                        firstDate: DateTime(2001, 1),
                                        lastDate: DateTime(2022, 7),
                                        helpText: 'Select a date',
                                      );
                                      var dateTime = DateTime.parse("$newDate");
                                      var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                      _mobiledatetoController.text = _date;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    child: TextFormField(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      controller: _mobiledatetoController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 10),
                                          hintText: "To",
                                          hintStyle: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.bold),

                                          suffixIcon: GestureDetector(
                                              onTap: (){
                                                setState(() async {
                                                  final DateTime? newDate = await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime(2020, 11, 17),
                                                    firstDate: DateTime(2001, 1),
                                                    lastDate: DateTime(2022, 7),
                                                    helpText: 'Select a date',
                                                  );
                                                  var dateTime = DateTime.parse("$newDate");
                                                  var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                                  _mobiledatetoController.text = _date;
                                                });
                                              },
                                              child: Icon(Icons.date_range)),

                                          border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(width: 10,),
                        Expanded(
                            flex:1,
                            child: SizedBox(
                              height: 75,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(""),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 40,
                                    child: TextFormField(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      readOnly: true,
                                      controller: _mobiledatefromController,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 10),
                                          hintText: "From",
                                          hintStyle: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          suffixIcon: InkWell(
                                              onTap: (){
                                                setState(() async {
                                                  final DateTime? newDate = await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime(2020, 11, 17),
                                                    firstDate: DateTime(2001, 1),
                                                    lastDate: DateTime(2022, 7),
                                                    helpText: 'Select a date',
                                                  );
                                                  var dateTime = DateTime.parse("$newDate");
                                                  var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                                  _mobiledatefromController.text = _date;
                                                });
                                              },
                                              child: Icon(Icons.date_range)),
                                          border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            )),
                        SizedBox(width: width*0.08,)

                      ],),
                    CustomTableRoles(firstColoum: 'USERNAME', secondColoum: 'EMAIL', thirdColoum:'    ROLE    \nASSIGNED' , fourthColoum: 'STATUS',data: data,),
                  ],
                ),
              )
            ),
          );
      }
    }

    );
  }
}
