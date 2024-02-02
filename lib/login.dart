import 'package:admin/Routing/route_generator.dart';
import 'package:admin/Routing/routing.gr.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:admin/view-model/login_bloc/login_bloc.dart';
import 'package:admin/view-model/login_bloc/login_event.dart';
import 'package:admin/view-model/login_bloc/login_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String route = '';
  final String boatlogin = 'images/boatlogin.png';
  final String rectangle1 = 'images/Rectangle 1.svg';

  addEvent(LoginEvent event) {
    context.read<LoginBloc>().add(event);
  }
  bool passVisible=true;
  @override
  Widget build(BuildContext context) {
    route = ModalRoute.of(context)!.settings.name.toString();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {

      return
        LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints){
      if(width > 700){
        print("sdfads${ width * 0.185}      987");
        return   Scaffold(
          body: SafeArea(
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(height: height,
                      color: Colors.redAccent.shade700,
                      child: Stack(
                        children: [
                          Image.asset(boatlogin,fit: BoxFit.fill,width:width,),
                          SvgPicture.asset(rectangle1,fit: BoxFit.fill,width: width,),
                          Positioned(bottom: 80,
                            left: 60,
                            child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 400,left: 40),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Kanlian\nDashboard",style: TextStyle(fontSize: 40,fontFamily: 'Rubix',color: Colors.white,fontWeight: FontWeight.w100),),
                                        SizedBox(height: 20,),
                                        Container(
                                          alignment: AlignmentDirectional.topStart,

                                          width: 316,
                                          child: Text(
                                            "Vestibulum commodo sapien non elit porttitor, vitae volutpat nibh mollis. Nulla porta risus id neque tempor, in efficitur justo imperdiet. Etiam a ex at ante tincidunt imperdiet. \nNunc congue ex vel nisl viverra.",
                                            style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Colors.white,fontWeight: FontWeight.w100,
                                            height: 1.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ],),
                    )),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Image.asset("images/kanlian_logo.png",height: height * 0.15, width: width * 0.15,alignment: AlignmentDirectional.topStart,)),
                          SizedBox(height: 10,),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Welcome Back",style: TextStyle(fontSize: 34,color: Color(0xFF2E384D),fontFamily: 'Rubix'),),
                                  SizedBox(height: 5,),
                                  Text("Login to your account with email",style: TextStyle(color: Color(0xFF8798AD)),),
                                  SizedBox(height: 20,),
                                  Text("EMAIL",style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF8798AD)),),
                                  SizedBox(height: 5,),
                                  Container(
                                    height: 40,
                                    alignment: Alignment.center,padding: EdgeInsets.zero,margin: EdgeInsets.zero,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
                                    child: TextFormField(style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF8798AD)),
                                      controller: _emailController,
                                      maxLines: 1,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10),
                                          helperMaxLines: 1,

                                          border: OutlineInputBorder(gapPadding: 0,
                                              borderRadius: BorderRadius.circular(10))
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text("PASSWORD",style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF8798AD)),),
                                  SizedBox(height: 5,),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
                                    child: TextFormField(
                                      style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF2E384D)),
                                      controller: _passwordController,
                                      obscureText: passVisible,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10),
                                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                        suffixIcon: IconButton(onPressed: (){
                                          setState(() {
                                            passVisible=!passVisible;
                                          });
                                        }, icon: Icon(passVisible==true?Icons.visibility_outlined:Icons.visibility_off_outlined))
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      print("abhishek");
                                      context.router.push(ForgetPassword());
                                    },
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text("Forget Password?",style: TextStyle(fontSize: 15,fontFamily: 'Rubix',color: Color(0xFF2E384D)),),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Center(
                                    child: GestureDetector(
                                      onTap: ()async{

                                          addEvent(GetLoginEvent(email: _emailController.text,password: _passwordController.text,context: context));

                                        // await SharedPref.setBool(key: "User-detail", data: true);
                                        // context.router.pushNamed(RouteConst.dashboard);
                                        // await SharedPref.setBool(key: "login", data: true);
                                      },
                                      child: Container(
                                        height: height * 0.06,
                                        width: width * 0.24,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(5), color: Colors.red,),
                                        child: state.status == false ? Center(
                                          child: Text("Log In",style: TextStyle(color: Colors.white),
                                          ),
                                        ):Center(child: CircularProgressIndicator(color: Colors.white,),)
                                      ),
                                    ),
                                  )
                                ],
                              ))



                        ],
                      ),
                    ),
                  ),
                )
              ],),
          ),
        );
      }
      else {
        return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding:  EdgeInsets.only(top: height * 0.15),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.7 ),
                        child: Image.asset("images/kanlian_logo.png",height: height* 0.2,),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: height* 0.1),
                        child: Container(
                          margin: EdgeInsets.all(width * 0.05),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Welcome Back",style: TextStyle(fontSize: 25,color: Colors.black54),),
                                SizedBox(height: 5,),
                                Text("Login to your account with email",style: TextStyle(color: Colors.black54),),
                                SizedBox(height: 20,),
                                Text("EMAIL",style: TextStyle(color: Colors.black54),),
                                SizedBox(height: 5,),
                                Container(
                                  width: width,
                                  height: 40,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        helperMaxLines: 1,
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text("PASSWORD",style: TextStyle(color: Colors.black54),),
                                SizedBox(height: 5,),
                                Container(
                                  width: width,
                                  height: 40,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade100),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 10),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Forget Password?",style: TextStyle(color: Colors.black54,)),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: GestureDetector(
                                    onTap: (){
                                      print("This is login");

                                        addEvent(GetLoginEvent(email: _emailController.text,password: _passwordController.text,context: context));

                                    },
                                    child: Container(
                                      height: height * 0.05,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5), color: Colors.red,),
                                      child: Center(
                                        child: Text("Log In",style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ],),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
            )

          );
      }

    }
    );});
  }
  // bool passValidation(){
  //
  // }
  bool _validateMail(String s) {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(s);
  }
}
