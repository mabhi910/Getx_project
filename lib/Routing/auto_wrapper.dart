
import 'package:admin/Routing/route_generator.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:admin/view-model/login_bloc/login_bloc.dart';
import 'package:admin/view-model/login_bloc/login_event.dart';
import 'package:admin/view/menuItems/dashboard.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AutoWrapper extends StatefulWidget {
  const AutoWrapper({/*this.child,*/ Key? key}) : super(key: key);

  // final Widget? child;

  @override
  State<AutoWrapper> createState() => _AutoWrapperState();
}

class _AutoWrapperState extends State<AutoWrapper> {

  addEvent(LoginEvent event) {
    context.read<LoginBloc>().add(event);
  }

  Widget child = Container();
  String route = '';
  String? image = '';
  String? names = '';
  String? emails = '';
  bool showNotification = false;
  bool pressed = false;
  // triggerAddItemEvent(LoginEvent event) {
  //   context.read<LoginBloc>().add(event);
  // }

  @override
  void initState() {
    // child = widget.child;
    // setData();
    print("fgjhklg;${context.router.currentPath}");
    super.initState();
  }

  // setData() async {
  //   await SharedPref.setString(key: "login", data: "login");
  //   await SharedPref.setBool(key: "User-detail", data: false);
  //   void function()async{
  //     image =  await SharedPref.getString(key: "user-Image");
  //     names = await SharedPref.getString(key: "user-name");
  //     emails = await SharedPref.getString(key: "user-email");
  //   }
  //
  //   html.window.onBeforeUnload.listen((event) async {
  //     token = await SharedPref.getString(key: "login");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    route = ModalRoute.of(context)!.settings.name.toString();

    debugPrint("route: $route");
    return  LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints) {
      if (width > 700) {
        return Scaffold(
          body: Stack(
              children:[
                Row(
                  children: [
                    Container(
                      width: pressed == false? 200 : 70,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/kanlian_logo.png",
                            width: width,
                            alignment: Alignment.topCenter,
                          ),
                          Container(
                            width: width,
                            height: height*0.76,
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("dash");
                                    setState(() {
                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive(RouteConst.dash)? Color(0xFFFFF7F7)   :Colors.white,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive(RouteConst.dash)? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.grid_view, color: context.router.isPathActive(RouteConst.dash) ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ? true : false,
                                          child: Text("Dashboard",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive(RouteConst.dash) ? Colors.red : Colors.black,
                                            // ),
                                              style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                  color:  context.router.isPathActive(RouteConst.dash) ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                              ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("FrontEndUser");
                                    setState(() {
                                    });
                                    print("fgddfghjlk${context.router.currentPath}");
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('FrontEndUser')? Color(0xFFFFF7F7)   :Colors.white,
                                    width: width,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('FrontEndUser')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.layers, color: context.router.isPathActive('FrontEndUser') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("FrontEndUser",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('FrontEndUser') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('FrontEndUser')  ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("Kanlianuser");
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('Kanlianuser')? Color(0xFFFFF7F7)   :Colors.white,
                                    width: width,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('Kanlianuser')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.person, color: context.router.isPathActive('Kanlianuser') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("Kanlian user",
                                            // style: TextStyle(
                                            //   color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black,
                                            //   fontSize: width * 0.012,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('Kanlianuser') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("BoatInformation");
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('BoatInformation')? Color(0xFFFFF7F7)   :Colors.white,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('BoatInformation')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.directions_boat_outlined, color: context.router.isPathActive('BoatInformation') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("Boat Information",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('BoatInformation') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("UserRolesAccess");
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('UserRolesAccess')?Color(0xFFFFF7F7)   :Colors.white,
                                    width: width,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('UserRolesAccess')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.person, color: context.router.isPathActive('UserRolesAccess') ?Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("UserRoles & Access",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('UserRolesAccess') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("Sales");
                                    setState(() {});
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('Sales')? Color(0xFFFFF7F7)  :Colors.white,
                                    width: width,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('Sales')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.grid_view, color: context.router.isPathActive('Sales') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ? true:false,
                                          child: Text("Sales",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('Sales') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('Sales') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                  onTap: (){
                                    context.router.pushNamed("Settings");
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('Settings')? Color(0xFFFFF7F7)  :Colors.white,
                                    width: width,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('Settings')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.settings, color: context.router.isPathActive('Settings') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        const SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("Settings",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('Settings') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color:  context.router.isPathActive('Settings') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: (){
                                    addEvent(logoutEvent(context: context));
                                  },
                                  child: Container(
                                    color: context.router.isPathActive('Logout')? Color(0xFFFFF7F7) :Colors.white,
                                    child: Row(
                                      children: [
                                        context.router.isPathActive('Logout')? Container(width: 2,height: height * 0.06,color:  Colors.red):Text(""),
                                        SizedBox(width: 30,),
                                        Icon(Icons.login_outlined, color: context.router.isPathActive('Logout') ? Color(0xFFE82717):Color(0xFF5F5F5F),size: 20,),
                                        SizedBox(width: 5,),
                                        Visibility(
                                          visible:  pressed == false ?true:false,
                                          child: Text("Logout",
                                            // style: TextStyle(
                                            //   fontSize: width * 0.012,
                                            //   color: context.router.isPathActive('Logout') ? Colors.red : Colors.black,
                                            // ),
                                            style: TextStyle(fontSize: 14,fontFamily: 'Rubix',
                                                color: context.router.isPathActive('Logout') ? Color(0xFFE82717):Color(0xFF5F5F5F)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Kanlianuser");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.person, color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Kanlianuser",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Kanlianuser') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("BoatInformation");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.directions_boat_filled_outlined, color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("BoatInformation",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('BoatInformation') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("UserRolesAccess");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.person, color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("UserRolesAccess",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('UserRolesAccess') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Sales");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.mode_fan_off_outlined, color: context.router.isPathActive('Sales') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Sales",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Sales') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(height: 20,),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Settings");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.settings, color: context.router.isPathActive('Settings') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Settings",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Settings') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                // Spacer(),
                                // GestureDetector(
                                //   onTap: (){
                                //     context.router.pushNamed("Logout");
                                //     setState(() {
                                //
                                //     });
                                //   },
                                //
                                //   child: Row(
                                //     children: [
                                //       Icon(Icons.layers, color: context.router.isPathActive('Logout') ? Colors.red : Colors.black),
                                //       SizedBox(width: 5,),
                                //       Text("Logout",
                                //         style: TextStyle(
                                //           color: context.router.isPathActive('Logout') ? Colors.red : Colors.black,
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        width: pressed == false? width * 0.85 : width * 0.94,
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              width: pressed == false ? width * 0.853 : width,
                              height: 49,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(width: 20,),
                                  Icon(Icons.notifications),
                                  SizedBox(width: 20,),
                                  Container(
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(50)),
                                      child: CircleAvatar(backgroundImage: AssetImage("images/kanlian_logo.png"),backgroundColor: Colors.white,)),
                                  SizedBox(width: 5,),
                                  Icon(Icons.keyboard_arrow_down_sharp),
                                  SizedBox(width: 30,),
                                ],
                              ),
                            ),
                            Container(
                              width: width,
                              height: height * 0.922,
                              child: const AutoRouter(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],

                ),

                InkWell(
                  onTap: (){
                    setState(() {
                      pressed = !pressed;
                      print("fghjk${pressed}");
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: pressed ==false ? 190 : 60,top: 12),
                      child: pressed == false ? CircleAvatar(backgroundColor: Colors.red,
                        radius: 12,
                        child: Align(alignment: Alignment.center,child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,size: 15,)),
                      ) :
                      CircleAvatar(backgroundColor: Colors.red,
                        radius: 12,
                        child: Align(alignment: Alignment.center,child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,size: 15,)),
                      )
                  ),
                ),

              ]
          ),
        );
      } else {
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Image.asset("images/kanlian_logo.png"),
                  decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.grid_view,
                  ),
                  title: const Text('Dashboard'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("dash");
                    setState(() {

                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.layers,
                  ),
                  title: const Text('FrontEndUser'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("FrontEndUser");
                    setState(() {
                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: const Text('Kanlianuser'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("Kanlianuser");
                    setState(() {
                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.directions_boat_outlined,
                  ),
                  title:  const Text('BoatInformation'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("BoatInformation");
                    setState(() {
                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                  ),
                  title: const Text('UserRoles & Access'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("UserRolesAccess");
                    setState(() {
                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.percent_outlined,
                  ),
                  title: const Text('Sales'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("Sales");
                    setState(() {
                    });
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                    context.router.pushNamed("Settings");
                    setState(() {
                    });
                  },
                ),
                SizedBox(height: height * 0.19,),

                ListTile(
                  leading: Icon(
                    Icons.login_outlined,
                  ),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                    addEvent(logoutEvent(context: context));
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            // leading: Icon(Icons.menu,color: Colors.black,),
            // leading: ,
            backgroundColor: Colors.red,
            actions: [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 10,),
              Icon(Icons.notifications,color: Colors.black,),
              SizedBox(width: 10,),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/kanlian_logo.png"),
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.keyboard_arrow_down_sharp,size: 30,color: Colors.black,),
              SizedBox(width: 5,)

            ],

          ),
          body: AutoRouter(),
        );

      }
    }

    );
  }
}
