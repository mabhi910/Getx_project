import 'package:admin/Routing/routing.gr.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:admin/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../temp/user_roles.dart';
import '../../widgets/custom_dropdown.dart';
import '../../widgets/custom_table_roles.dart';
import '../../widgets/dashboard_card.dart';

class Dashboard extends StatefulWidget {
  final bool? pressed;
  const Dashboard({Key? key,this.pressed}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> list=['All','Vishal','Abhishek'];
  final TextEditingController _webdatetoController = TextEditingController();
  final TextEditingController _webdatefromController = TextEditingController();
  final TextEditingController _mobiledatetoController = TextEditingController();
  final TextEditingController _mobiledatefromController = TextEditingController();

  final String assetName = 'images/Card Base.svg';
  final String pathName = 'images/Path.svg';
  final String pathName2 = 'images/Path2.svg';
   bool? pressed;

  getBool()async{
     pressed = await SharedPref.getBool(key: "show");
     print("pressed===${pressed}");
  }

  @override
  void initState() {
    getBool();
    super.initState();
  }

  String route = '';
  @override
  Widget build(BuildContext context) {
    route = ModalRoute.of(context)!.settings.name.toString();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var data=TempData().user;
    return LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints){
      if (width > 700) {
        print("sdfads${ width * 0.185}      987");
        return Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Container(
              width: width,
              height: height,
              margin: EdgeInsets.all(width * 0.022),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Dashboard", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 200,
                          child: CustomButton(text: 'Add Boat', backgroundColor: Color(0xFFf02414), onPressed: (){
                            print('Add hell');
                            // context.router.push(CreateNewUser());
                            // setState(() {
                            // });
                          }),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: width,
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Expanded    (
                      //         flex:1,
                      //         child: Container(
                      //           height: height* 0.25,
                      //           color: Colors.teal.shade300,
                      //         child: Padding(
                      //           padding:  EdgeInsets.all(height*0.02),
                      //           child: Expanded(
                      //             child: Column(
                      //               crossAxisAlignment: CrossAxisAlignment.start,
                      //               mainAxisAlignment: MainAxisAlignment.start,
                      //               children: [
                      //                 CircleAvatar(
                      //                   backgroundColor: Colors.white30,
                      //                   radius: 20,
                      //                   child: Icon(Icons.groups,color: Colors.white,),
                      //                 ),
                      //                 Expanded(
                      //                   child: Row(
                      //                     children: [
                      //                       Text("1234",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white70),),
                      //                       SizedBox(width: width*0.005),
                      //                       Expanded(
                      //                         child: Stack(children: [
                      //                           SvgPicture.asset(pathName2,width: width*0.04,),
                      //                           SvgPicture.asset(pathName,width: width*0.04,),
                      //                         ]),
                      //                       ),
                      //                       Spacer()
                      //
                      //                     ],
                      //                   ),
                      //                 ),
                      //                 Text("Total Number Of Users",style:TextStyle(fontSize: width*0.015,fontWeight: FontWeight.bold,color: Colors.white70),)
                      //               ],
                      //             )
                      //           ),
                      //         ),
                      //         )),
                      //     SizedBox(width: 15,),
                      //     Expanded(
                      //         flex:1,
                      //         child: Container(
                      //           height: height* 0.25,
                      //           color: Colors.orange.shade300,
                      //           child: Padding(
                      //             padding:  EdgeInsets.all(height*0.02),
                      //             child: Expanded(
                      //                 child: Column(
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   mainAxisAlignment: MainAxisAlignment.start,
                      //                   children: [
                      //                     CircleAvatar(
                      //                       backgroundColor: Colors.white30,
                      //                       radius: 20,
                      //                       child: Icon(Icons.group,color: Colors.white,),
                      //                     ),
                      //                     Expanded(
                      //                       child: Row(
                      //                         children: [
                      //                           Text("1234",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white70),),
                      //                           SizedBox(width: width*0.005),
                      //                           Expanded(
                      //                             child: Stack(children: [
                      //                               SvgPicture.asset(pathName2,width: width*0.04,),
                      //                               SvgPicture.asset(pathName,width: width*0.04,),
                      //                             ]),
                      //                           ),
                      //                           Spacer()
                      //
                      //                         ],
                      //                       ),
                      //                     ),
                      //                     Text("Total Internal Users",style:TextStyle(fontSize: width*0.015,fontWeight: FontWeight.bold,color: Colors.white70),)
                      //                   ],
                      //                 )
                      //             ),
                      //           ),
                      //         )),
                      //     SizedBox(width: 15,),
                      //     Expanded(
                      //         flex:1,
                      //         child: Container(
                      //           height: height* 0.25,
                      //           color: Colors.teal.shade300,
                      //           child: Padding(
                      //             padding:  EdgeInsets.all(height*0.02),
                      //             child: Expanded(
                      //                 child: Column(
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   mainAxisAlignment: MainAxisAlignment.start,
                      //                   children: [
                      //                     CircleAvatar(
                      //                       backgroundColor: Colors.white30,
                      //                       radius: 20,
                      //                       child: Icon(Icons.event_note_sharp,color: Colors.white,),
                      //                     ),
                      //                     Expanded(
                      //                       child: Row(
                      //                         children: [
                      //                           Text("455",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white70),),
                      //                           SizedBox(width: width*0.005),
                      //                           Expanded(
                      //                             child: Stack(children: [
                      //                               SvgPicture.asset(pathName2,width: width*0.04,),
                      //                               SvgPicture.asset(pathName,width: width*0.04,),
                      //                             ]),
                      //                           ),
                      //                           Spacer()
                      //
                      //                         ],
                      //                       ),
                      //                     ),
                      //                     Text("Total Bookings",style:TextStyle(fontSize: width*0.015,fontWeight: FontWeight.bold,color: Colors.white70),)
                      //                   ],
                      //                 )
                      //             ),
                      //           ),
                      //         )),
                      //     SizedBox(width: 15,),
                      //     Expanded(
                      //         flex:1,
                      //         child: Container(
                      //           height: height* 0.25,
                      //           color: Colors.orange.shade800,
                      //           child: Padding(
                      //             padding:  EdgeInsets.all(height*0.02),
                      //             child: Expanded(
                      //                 child: Column(
                      //                   crossAxisAlignment: CrossAxisAlignment.start,
                      //                   mainAxisAlignment: MainAxisAlignment.start,
                      //                   children: [
                      //                     CircleAvatar(
                      //                       backgroundColor: Colors.white30,
                      //                       radius: 20,
                      //                       child: Icon(Icons.directions_boat_sharp,color: Colors.white,),
                      //                     ),
                      //                     Expanded(
                      //                       child: Row(
                      //                         children: [
                      //                           Text("566",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white70),),
                      //                           SizedBox(width: width*0.005),
                      //                           Expanded(
                      //                             child: Stack(children: [
                      //                               SvgPicture.asset(pathName2,width: width*0.04,),
                      //                               SvgPicture.asset(pathName,width: width*0.04,),
                      //                             ]),
                      //                           ),
                      //                           Spacer()
                      //
                      //                         ],
                      //                       ),
                      //                     ),
                      //                     Text("Total Boats",style:TextStyle(fontSize: width*0.015,fontWeight: FontWeight.bold,color: Colors.white70),)
                      //                   ],
                      //                 )
                      //             ),
                      //           ),
                      //         )),
                      //     // Container(
                      //     //   height: height * 0.25,
                      //     //   width:  width * 0.185,
                      //     //   color: Colors.teal.shade300,
                      //     //   child: Padding(
                      //     //     padding: const EdgeInsets.all(20),
                      //     //     child: Column(
                      //     //       crossAxisAlignment: CrossAxisAlignment.start,
                      //     //       children: [
                      //     //         // Container(
                      //     //         //   height: height * 0.050,
                      //     //         //   width: width * 0.025,
                      //     //         //   decoration: BoxDecoration(
                      //     //         //       borderRadius: BorderRadius.circular(360),
                      //     //         //       color: Colors.white30),
                      //     //         //   child: Icon(
                      //     //         //     Icons.groups, color: Colors.white, size: 20,),
                      //     //         // ),
                      //     //         CircleAvatar(
                      //     //           backgroundColor: Colors.white30,
                      //     //           radius: 16,
                      //     //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //     //         ),
                      //     //         SizedBox(height: 15,),
                      //     //         Row(
                      //     //           children: [
                      //     //             Text("1234", style: TextStyle(
                      //     //                 fontSize: 43, color: Colors.white60),),
                      //     //             SizedBox(width: width * 0.02,),
                      //     //             Stack(children: [
                      //     //               SvgPicture.asset(pathName2),
                      //     //               SvgPicture.asset(pathName)
                      //     //             ]),
                      //     //           ],
                      //     //         ),
                      //     //         Text("Total Number Of Users",
                      //     //             style: TextStyle(color: Colors.white60))
                      //     //
                      //     //       ],
                      //     //     ),
                      //     //   ),
                      //     //
                      //     // ),
                      //     // SizedBox(width: width * 0.019,),
                      //     // Container(
                      //     //   height: height * 0.25,
                      //     //   width: width * 0.185,
                      //     //   color: Colors.orangeAccent.shade200,
                      //     //   child: Padding(
                      //     //     padding: const EdgeInsets.all(20),
                      //     //     child: Column(
                      //     //       crossAxisAlignment: CrossAxisAlignment.start,
                      //     //       children: [
                      //     //         // Container(
                      //     //         //   height: height * 0.050,
                      //     //         //   width: width * 0.025,
                      //     //         //   decoration: BoxDecoration(
                      //     //         //       borderRadius: BorderRadius.circular(360),
                      //     //         //       color: Colors.white30),
                      //     //         //   child: Icon(
                      //     //         //     Icons.groups, color: Colors.white, size: 20,),
                      //     //         // ),
                      //     //         CircleAvatar(
                      //     //           backgroundColor: Colors.white30,
                      //     //           radius: 16,
                      //     //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //     //         ),
                      //     //         SizedBox(height: 15,),
                      //     //         Row(
                      //     //           children: [
                      //     //             Text("1234", style: TextStyle(
                      //     //                 fontSize: 43, color: Colors.white60),),
                      //     //             SizedBox(width: width * 0.02,),
                      //     //             Stack(children: [
                      //     //               SvgPicture.asset(pathName2),
                      //     //               SvgPicture.asset(pathName)
                      //     //             ]),
                      //     //
                      //     //
                      //     //           ],
                      //     //         ),
                      //     //         Text("Total Number Of Users",
                      //     //             style: TextStyle(color: Colors.white60))
                      //     //
                      //     //       ],
                      //     //     ),
                      //     //   ),
                      //     //
                      //     // ),
                      //     // SizedBox(width: width * 0.019,),
                      //     // Container(
                      //     //   height: height * 0.25,
                      //     //   width: width * 0.185,
                      //     //   color: Colors.teal.shade400,
                      //     //   child: Padding(
                      //     //     padding: const EdgeInsets.all(20),
                      //     //     child: Column(
                      //     //       crossAxisAlignment: CrossAxisAlignment.start,
                      //     //       children: [
                      //     //         // Container(
                      //     //         //   height: height * 0.050,
                      //     //         //   width: width * 0.025,
                      //     //         //   decoration: BoxDecoration(
                      //     //         //       borderRadius: BorderRadius.circular(360),
                      //     //         //       color: Colors.white30),
                      //     //         //   child: Icon(
                      //     //         //     Icons.groups, color: Colors.white, size: 20,),
                      //     //         // ),
                      //     //         CircleAvatar(
                      //     //           backgroundColor: Colors.white30,
                      //     //           radius: 16,
                      //     //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //     //         ),
                      //     //         SizedBox(height: 15,),
                      //     //         Row(
                      //     //           children: [
                      //     //             Text("1234", style: TextStyle(
                      //     //                 fontSize: 43, color: Colors.white60),),
                      //     //             SizedBox(width: width * 0.02,),
                      //     //             Stack(children: [
                      //     //               SvgPicture.asset(pathName2),
                      //     //               SvgPicture.asset(pathName)
                      //     //             ]),
                      //     //
                      //     //
                      //     //           ],
                      //     //         ),
                      //     //         Text("Total Number Of Users",
                      //     //             style: TextStyle(color: Colors.white60))
                      //     //
                      //     //       ],
                      //     //     ),
                      //     //   ),
                      //     //
                      //     // ),
                      //     // SizedBox(width: width * 0.019,),
                      //     // Container(
                      //     //   height: height * 0.25,
                      //     //   width: width * 0.185,
                      //     //   color: Colors.orange.shade800,
                      //     //   child: Padding(
                      //     //     padding: const EdgeInsets.all(20),
                      //     //     child: Column(
                      //     //       crossAxisAlignment: CrossAxisAlignment.start,
                      //     //       children: [
                      //     //         // Container(
                      //     //         //   height: height * 0.050,
                      //     //         //   width: width * 0.025,
                      //     //         //   decoration: BoxDecoration(
                      //     //         //       borderRadius: BorderRadius.circular(360),
                      //     //         //       color: Colors.white30),
                      //     //         //   child: Icon(
                      //     //         //     Icons.groups, color: Colors.white, size: 20,),
                      //     //         // ),
                      //     //         CircleAvatar(
                      //     //           backgroundColor: Colors.white30,
                      //     //           radius: 16,
                      //     //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //     //         ),
                      //     //         SizedBox(height: 15,),
                      //     //         Row(
                      //     //           children: [
                      //     //             Text("1234", style: TextStyle(
                      //     //                 fontSize: 43, color: Colors.white60),),
                      //     //             SizedBox(width: width * 0.02,),
                      //     //             Stack(children: [
                      //     //               SvgPicture.asset(pathName2),
                      //     //               SvgPicture.asset(pathName)
                      //     //             ]),
                      //     //
                      //     //
                      //     //           ],
                      //     //         ),
                      //     //         Text("Total Number Of Users",
                      //     //             style: TextStyle(color: Colors.white60))
                      //     //
                      //     //       ],
                      //     //     ),
                      //     //   ),
                      //     // ),
                      //
                      //   ],
                      // ),
                      child: Row(
                        children: [
                          Expanded(child: DashCard(backgroundColour: Color(0xFF2EC4B6), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "1234", text: "Total Number Of Users")),
                          Expanded(child: DashCard(backgroundColour: Color(0xFFF7B737), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "120", text: "Total Internal Users")),
                          Expanded(child: DashCard(backgroundColour: Color(0xFF28B0A3), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "455", text: "Total Bookings")),
                          Expanded(child: DashCard(backgroundColour: Color(0xFFE88017), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "566", text: "Total Boats")),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("User Roles & Access",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold
                            , color: Colors.black54)),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 200,
                          child: CustomButton(text: 'Create New User', backgroundColor: Color(0xFFf02414), onPressed: (){
                            print('custom hell');
                            context.router.push(CreateNewUser());
                            setState(() {
                            });
                          }),
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
                              Text("Search",style: TextStyle(fontSize: 14,fontFamily: 'rubix',color: Colors.black54, fontWeight: FontWeight.bold),),
                              SizedBox(height: 7,),
                              Container(
                                height: 50,
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
                          child: CustomDropDown(titleText: 'Role', hintText: 'All', fun: (value){}, list: list)),
                      SizedBox(width: width*0.002,),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date",style: TextStyle(fontSize: 14,fontFamily: 'rubix',color: Colors.black54, fontWeight: FontWeight.bold),),
                              SizedBox(height: 7,),
                              Container(
                                height: 50,
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
                              Text("",style: TextStyle(fontSize: 14,fontFamily: 'rubix',color: Colors.black54, fontWeight: FontWeight.bold),),
                              SizedBox(height: 7,),
                              Container(
                                height: 50,
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
                          child: CustomDropDown(titleText: 'Status', hintText: 'All', fun: (value){}, list: list)),
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
                    CustomTableRoles(firstColoum: 'USERNAME', secondColoum: 'EMAIL', thirdColoum:'    ROLE    \nASSIGNED' , fourthColoum: 'STATUS',data: data,),
                    // Container(
                    //   padding: EdgeInsets.only(left: width*0.04,right:width * 0.019),
                    //   width: width,
                    //   height: width * 0.04,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //
                    //     ],
                    //   ),
                    // ),
                    // ListView.builder(
                    //   physics: NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //     itemCount: 5,
                    //     itemBuilder: (itemContext,int index){
                    //   return Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Container(
                    //         padding: EdgeInsets.only(left: 0,right:0),
                    //         width: width,
                    //         height: width * 0.04,
                    //         color: Colors.white,
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Container(
                    //               width: width * 0.08,
                    //               margin: EdgeInsets.only(left: width * 0.03),
                    //               child: Text("Abhishek Mishra"),
                    //             ),
                    //             Container(
                    //               width: width * 0.08,
                    //               margin: EdgeInsets.only(left: width * 0.02),
                    //               child: Text("Abhishek Mishra"),
                    //             ),Container(
                    //               width: width * 0.08,
                    //               margin: EdgeInsets.only(left: width * 0.008),
                    //               child: Text("Abhishek Mishra"),
                    //             ),Container(
                    //               width: width * 0.05,
                    //               margin: EdgeInsets.only(left: width * 0.02),
                    //               child: Text("Active"),
                    //             ),Container(
                    //               width: width * 0.02,
                    //               margin: EdgeInsets.only(left: width * 0.03),
                    //               child: Icon(Icons.abc_rounded),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         width: width,
                    //         height: width * 0.002,
                    //         color: Colors.grey.shade100,
                    //       )
                    //     ],
                    //   );
                    // })
                  ],
                ),
              ),
            ),
          ),
        );
      }
      else {
        return Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Container(
              height: height,
              width: width,
              color: Colors.grey.shade300,
              padding: EdgeInsets.symmetric(horizontal: width*0.027,vertical: height*0.03),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text("Dashboard", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54))),
                        Container(
                          height: height * 0.045,
                          width: width * 0.4,
                          decoration: BoxDecoration(borderRadius: BorderRadius
                              .circular(5), color: Colors.red,),
                          child: Center(
                            child: Text(
                              "Add Boat", style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded(
                        //   flex: 1,
                        //   child: Container(
                        //     height: height * 0.2,
                        //     color: Colors.teal.shade300,
                        //     child: Padding(
                        //       padding: EdgeInsets.all(height*0.005),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           CircleAvatar(
                        //             backgroundColor: Colors.white30,
                        //             radius: 16,
                        //             child: Icon(Icons.groups,color: Colors.white,size: 20,),
                        //           ),
                        //           Expanded(
                        //             flex: 1,
                        //             child: Row(
                        //               children: [
                        //                 Expanded(
                        //                   flex:1,
                        //                   child: Text("1234", style: TextStyle(
                        //                       fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //                 ),
                        //                 Stack(children: [
                        //                   SvgPicture.asset(pathName2),
                        //                   SvgPicture.asset(pathName)
                        //                 ]),
                        //               ],
                        //             ),
                        //           ),
                        //           Text("Total Number Of Users",
                        //               style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      // SizedBox(width: 10,),
                        // Expanded(
                        //   flex: 1,
                        //   child: Container(
                        //     height: height * 0.2,
                        //     color: Colors.orangeAccent.shade200,
                        //     child: Padding(
                        //       padding: EdgeInsets.all(height*0.005),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           CircleAvatar(
                        //             backgroundColor: Colors.white30,
                        //             radius: 16,
                        //             child: Icon(Icons.group_rounded,color: Colors.white,size: 20,),
                        //           ),
                        //           Expanded(
                        //             flex: 1,
                        //             child: Row(
                        //               children: [
                        //                 Expanded(
                        //                   flex:1,
                        //                   child: Text("120", style: TextStyle(
                        //                       fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //                 ),
                        //                 Stack(children: [
                        //                   SvgPicture.asset(pathName2),
                        //                   SvgPicture.asset(pathName)
                        //                 ]),
                        //
                        //               ],
                        //             ),
                        //           ),
                        //           Text("Total Internal Users",
                        //               style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      // Container(
                      //   height: height * 0.18,
                      //   width:  width * 0.46,
                      //   color: Colors.teal.shade300,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(20),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         // Container(
                      //         //   height: height * 0.04,
                      //         //   width: width * 0.08,
                      //         //   decoration: BoxDecoration(
                      //         //       borderRadius: BorderRadius.circular(360),
                      //         //       color: Colors.white30),
                      //         //   child: Icon(
                      //         //     Icons.groups, color: Colors.white, size: 20,),
                      //         // ),
                      //         CircleAvatar(
                      //           backgroundColor: Colors.white30,
                      //           radius: 16,
                      //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //         ),
                      //         SizedBox(height: 5,),
                      //         Row(
                      //           children: [
                      //             Text("1234", style: TextStyle(
                      //                 fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                      //             SizedBox(width: width * 0.02,),
                      //             Stack(children: [
                      //               SvgPicture.asset(pathName2),
                      //               SvgPicture.asset(pathName)
                      //             ]),
                      //           ],
                      //         ),
                      //         SizedBox(height: 8,),
                      //         Text("Total Number Of Users",
                      //             style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                      //
                      //       ],
                      //     ),
                      //   ),
                      //
                      // ),
                      // Container(
                      //   height: height * 0.18,
                      //   width:  width * 0.46,
                      //   color: Colors.orangeAccent.shade200,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(20),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         // Container(
                      //         //   height: height * 0.04,
                      //         //   width: width * 0.08,
                      //         //   decoration: BoxDecoration(
                      //         //       borderRadius: BorderRadius.circular(360),
                      //         //       color: Colors.white30),
                      //         //   child: Icon(
                      //         //     Icons.groups, color: Colors.white, size: 20,),
                      //         // ),
                      //         CircleAvatar(
                      //           backgroundColor: Colors.white30,
                      //           radius: 16,
                      //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                      //         ),
                      //         SizedBox(height: 5,),
                      //         Row(
                      //           children: [
                      //             Text("120", style: TextStyle(
                      //                 fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                      //             SizedBox(width: width * 0.02,),
                      //             Stack(children: [
                      //               SvgPicture.asset(pathName2),
                      //               SvgPicture.asset(pathName)
                      //             ]),
                      //           ],
                      //         ),
                      //         SizedBox(height: 8,),
                      //         Text("Total Internal Users",
                      //             style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                      //
                      //       ],
                      //     ),
                      //   ),
                      //
                      // ),
                        Expanded(child: DashCard(backgroundColour: Color(0xFF2EC4B6), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "1234", text: "Total Number Of Users")),
                        Expanded(child: DashCard(backgroundColour: Color(0xFFF7B737), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "120", text: "Total Internal Users")),

                      ],),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded(
                        //   flex: 1,
                        //   child: Container(
                        //     height: height * 0.2,
                        //     color: Colors.teal.shade300,
                        //     child: Padding(
                        //       padding: EdgeInsets.all(height*0.005),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           // Container(
                        //           //   height: height * 0.04,
                        //           //   width: width * 0.08,
                        //           //   decoration: BoxDecoration(
                        //           //       borderRadius: BorderRadius.circular(360),
                        //           //       color: Colors.white30),
                        //           //   child: Icon(
                        //           //     Icons.groups, color: Colors.white, size: 20,),
                        //           // ),
                        //           CircleAvatar(
                        //             backgroundColor: Colors.white30,
                        //             radius: 16,
                        //             child: Icon(Icons.event_note_sharp,color: Colors.white,size: 20,),
                        //           ),
                        //           Expanded(
                        //             flex: 1,
                        //             child: Row(
                        //               children: [
                        //                 Expanded(
                        //                   flex:2,
                        //                   child: Text("455", style: TextStyle(
                        //                       fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //                 ),
                        //                 Stack(children: [
                        //                   SvgPicture.asset(pathName2),
                        //                   SvgPicture.asset(pathName)
                        //                 ]),
                        //               ],
                        //             ),
                        //           ),
                        //           Text("Total Bookings",
                        //               style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(width: 10,),
                        // Expanded(
                        //   flex: 1,
                        //   child: Container(
                        //     height: height * 0.2,
                        //     color: Colors.orangeAccent.shade700,
                        //     child: Padding(
                        //       padding: EdgeInsets.all(height*0.005),
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           // Container(
                        //           //   height: height * 0.04,
                        //           //   width: width * 0.08,
                        //           //   decoration: BoxDecoration(
                        //           //       borderRadius: BorderRadius.circular(360),
                        //           //       color: Colors.white30),
                        //           //   child: Icon(
                        //           //     Icons.groups, color: Colors.white, size: 20,),
                        //           // ),
                        //           CircleAvatar(
                        //             backgroundColor: Colors.white30,
                        //             radius: 16,
                        //             child: Icon(Icons.directions_boat_filled_sharp,color: Colors.white,size: 20,),
                        //           ),
                        //           Expanded(
                        //             flex: 1,
                        //             child: Row(
                        //               children: [
                        //                 Expanded(
                        //                   flex:2,
                        //                   child: Text("566", style: TextStyle(
                        //                       fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //                 ),
                        //                 Stack(children: [
                        //                   SvgPicture.asset(pathName2),
                        //                   SvgPicture.asset(pathName)
                        //                 ]),
                        //               ],
                        //             ),
                        //           ),
                        //           Text("Total Boats",
                        //               style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   height: height * 0.18,
                        //   width:  width * 0.46,
                        //   color: Colors.teal.shade300,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         // Container(
                        //         //   height: height * 0.04,
                        //         //   width: width * 0.08,
                        //         //   decoration: BoxDecoration(
                        //         //       borderRadius: BorderRadius.circular(360),
                        //         //       color: Colors.white30),
                        //         //   child: Icon(
                        //         //     Icons.groups, color: Colors.white, size: 20,),
                        //         // ),
                        //         CircleAvatar(
                        //           backgroundColor: Colors.white30,
                        //           radius: 16,
                        //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                        //         ),
                        //         SizedBox(height: 5,),
                        //         Row(
                        //           children: [
                        //             Text("455", style: TextStyle(
                        //                 fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //             SizedBox(width: width * 0.02,),
                        //             Stack(children: [
                        //               SvgPicture.asset(pathName2),
                        //               SvgPicture.asset(pathName)
                        //             ]),
                        //           ],
                        //         ),
                        //         SizedBox(height: 8,),
                        //         Text("Total Bookings",
                        //             style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //       ],
                        //     ),
                        //   ),
                        //
                        // ),
                        // Container(
                        //   height: height * 0.18,
                        //   width:  width * 0.46,
                        //   color:Colors.orange.shade800,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(20),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         // Container(
                        //         //   height: height * 0.04,
                        //         //   width: width * 0.08,
                        //         //   decoration: BoxDecoration(
                        //         //       borderRadius: BorderRadius.circular(360),
                        //         //       color: Colors.white30),
                        //         //   child: Icon(
                        //         //     Icons.groups, color: Colors.white, size: 20,),
                        //         // ),
                        //         CircleAvatar(
                        //           backgroundColor: Colors.white30,
                        //           radius: 16,
                        //           child: Icon(Icons.groups,color: Colors.white,size: 20,),
                        //         ),
                        //         SizedBox(height: 10,),
                        //         Row(
                        //           children: [
                        //             Text("566", style: TextStyle(
                        //                 fontSize: 40, color: Colors.white60,fontWeight: FontWeight.bold),),
                        //             SizedBox(width: width * 0.02,),
                        //             Stack(children: [
                        //               SvgPicture.asset(pathName2),
                        //               SvgPicture.asset(pathName)
                        //             ]),
                        //           ],
                        //         ),
                        //         SizedBox(height: 8,),
                        //         Text("Total Boats",
                        //             style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold))
                        //
                        //       ],
                        //     ),
                        //   ),
                        //
                        // ),
                        Expanded(child: DashCard(backgroundColour: Color(0xFF28B0A3), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "455", text: "Total Bookings")),
                        Expanded(child: DashCard(backgroundColour: Color(0xFFE88017), upperIcon: Icon(Icons.people,color: Colors.white,size: 20,), numbers: "566", text: "Total Boats")),

                      ],),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child: Text("User Roles & Access", style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54))),
                        GestureDetector(
                          onTap: (){
                            print('hell');
                            context.router.push(CreateNewUser());
                            setState(() {

                            });
                          },
                          child: Container(
                            height: height * 0.045,
                            width: width * 0.43,
                            decoration: BoxDecoration(borderRadius: BorderRadius
                                .circular(5), color: Colors.red,),
                            child: Center(
                              child: Text(
                                "Create New User", style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
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
                      // Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       height: 100,
                      //
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text("Role"),
                      //           SizedBox(height: 10,),
                      //           Container(
                      //             height: 40,
                      //             child: TextFormField(
                      //               readOnly: true,
                      //               decoration: InputDecoration(
                      //                   hintText: "All",
                      //                   suffixIcon: Icon(
                      //                     Icons.keyboard_arrow_down_sharp,
                      //                     size: 25,),
                      //                   hintStyle: TextStyle(fontSize: 15,
                      //                       fontWeight: FontWeight.bold),
                      //                   border: OutlineInputBorder()
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //     )),
                      // Expanded(
                      //     flex: 1,
                      //     child: Container(
                      //       height: 100,
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text("Date"),
                      //           SizedBox(height: 10,),
                      //           Container(
                      //             height: 40,
                      //             child: TextFormField(
                      //               readOnly: true,
                      //               decoration: InputDecoration(
                      //                   hintText: "To",
                      //                   hintStyle: TextStyle(fontSize: 15,
                      //                       fontWeight: FontWeight.bold),
                      //
                      //                   suffixIcon: InkWell(
                      //                       onTap: () {
                      //                         //Date Picker
                      //                       },
                      //                       child: Icon(Icons.date_range)
                      //                   ),
                      //
                      //                   border: OutlineInputBorder()
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //     )),
                      // SizedBox(width: 10,),
                      // Expanded(
                      //     flex: 1,
                      //     child: Container(
                      //       height: 100,
                      //
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text(""),
                      //           SizedBox(height: 10,),
                      //           Container(
                      //             height: 40,
                      //             child: TextFormField(
                      //               readOnly: true,
                      //               decoration: InputDecoration(
                      //                   hintText: "From",
                      //                   hintStyle: TextStyle(fontSize: 15,
                      //                       fontWeight: FontWeight.bold),
                      //                   suffixIcon: InkWell(
                      //                       onTap: () {
                      //                         // Date Picker
                      //                       },
                      //                       child: Icon(Icons.date_range)),
                      //                   border: OutlineInputBorder()
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //     )),
                      // SizedBox(width: 10,),
                      // Expanded(
                      //     flex: 2,
                      //     child: Container(
                      //       height: 100,
                      //
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text("Status"),
                      //           SizedBox(height: 10,),
                      //           Container(
                      //             height: 40,
                      //             child: TextFormField(
                      //               decoration: InputDecoration(
                      //                   hintText: "All",
                      //                   suffixIcon: Icon(
                      //                     Icons.keyboard_arrow_down_sharp,
                      //                     size: 25,),
                      //                   hintStyle: TextStyle(fontSize: 15,
                      //                       fontWeight: FontWeight.bold),
                      //                   border: OutlineInputBorder()
                      //               ),
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //     )),
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
                        // Expanded(
                        //     flex: 2,
                        //     child: Container(
                        //       height: 100,
                        //
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text("Role"),
                        //           SizedBox(height: 10,),
                        //           Container(
                        //             height: 40,
                        //             child: TextFormField(
                        //               readOnly: true,
                        //               decoration: InputDecoration(
                        //                   contentPadding: EdgeInsets.only(left: 10),
                        //                   hintText: "All",
                        //                   suffixIcon: Icon(
                        //                     Icons.keyboard_arrow_down_sharp,
                        //                     size: 25,),
                        //                   hintStyle: TextStyle(fontSize: 15,
                        //                       fontWeight: FontWeight.bold),
                        //                   border: OutlineInputBorder()
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //
                        //     )),
                        // SizedBox(width: 10,),
                        // Expanded(
                        //     flex: 2,
                        //     child: Container(
                        //       height: 100,
                        //
                        //       child: Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text("Status"),
                        //           SizedBox(height: 10,),
                        //           Container(
                        //             height: 40,
                        //             child: TextFormField(
                        //               readOnly: true,
                        //               decoration: InputDecoration(
                        //                   contentPadding: EdgeInsets.only(left: 10),
                        //                   hintText: "All",
                        //                   suffixIcon: Icon(
                        //                     Icons.keyboard_arrow_down_sharp,
                        //                     size: 25,),
                        //                   hintStyle: TextStyle(fontSize: 15,
                        //                       fontWeight: FontWeight.bold),
                        //                   border: OutlineInputBorder()
                        //               ),
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //
                        //     )),
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
                                        // suffixIcon: InkWell(
                                        //     onTap: (){
                                        //       setState(() async {
                                        //         final DateTime? newDate = await showDatePicker(
                                        //           context: context,
                                        //           initialDate: DateTime(2020, 11, 17),
                                        //           firstDate: DateTime(2001, 1),
                                        //           lastDate: DateTime(2022, 7),
                                        //           helpText: 'Select a date',
                                        //         );
                                        //         var dateTime = DateTime.parse("$newDate");
                                        //         var _date = "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                                        //         _mobiledatefrom_Controller.text = _date;
                                        //       });
                                        //     },
                                        //     child: Icon(Icons.date_range)),
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
                    SizedBox(height: 20,),
                    CustomTableRoles(firstColoum: 'USERNAME', secondColoum: 'EMAIL', thirdColoum:'    ROLE    \nASSIGNED' , fourthColoum: 'STATUS',data: data,),

                    // Container(
                    //   padding: EdgeInsets.only(left: width*0.04,right:width * 0.019),
                    //   width: width,
                    //   height: width * 0.04,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text("Username"),
                    //       Text("Email"),
                    //       Text("    Role    \nAssigned"),
                    //       Text("Status"),
                    //       Visibility(
                    //           visible: true,
                    //           child: Text("")
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // ListView.builder(
                    //     physics: NeverScrollableScrollPhysics(),
                    //     shrinkWrap: true,
                    //     itemCount: 10,
                    //     itemBuilder: (itemContext,int index){
                    //       return Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           Container(
                    //             padding: EdgeInsets.only(left: 0,right:0),
                    //             width: width,
                    //             height: width * 0.04,
                    //             color: Colors.white,
                    //             child: Row(
                    //               crossAxisAlignment: CrossAxisAlignment.center,
                    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Container(
                    //                   width: width * 0.08,
                    //                   margin: EdgeInsets.only(left: width * 0.03),
                    //                   child: Text("Abhishek Mishra"),
                    //                 ),
                    //                 Container(
                    //                   width: width * 0.08,
                    //                   margin: EdgeInsets.only(left: width * 0.02),
                    //                   child: Text("Abhishek Mishra"),
                    //                 ),Container(
                    //                   width: width * 0.08,
                    //                   margin: EdgeInsets.only(left: width * 0.008),
                    //                   child: Text("Abhishek Mishra"),
                    //                 ),Container(
                    //                   width: width * 0.05,
                    //                   margin: EdgeInsets.only(left: width * 0.02),
                    //                   child: Text("Active"),
                    //                 ),Container(
                    //                   width: width * 0.02,
                    //                   margin: EdgeInsets.only(left: width * 0.03),
                    //                   child: Icon(Icons.abc_rounded),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //           Container(
                    //             width: width,
                    //             height: width * 0.002,
                    //             color: Colors.grey.shade100,
                    //           )
                    //         ],
                    //       );
                    //     })

                  ],
                ),
              ),
            ),
          ),
          );
      }
    }

    );
  }
}
