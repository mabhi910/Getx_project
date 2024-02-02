import 'package:admin/getx/controller/forget_controller.dart';
import 'package:admin/widgets/custom_button.dart';
import 'package:admin/widgets/custom_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _otpController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _confirmPasswordController=TextEditingController();
  bool _emailVisible=true;
  bool _otpVisible=false;
  bool _passVisible=false;
  final controller=ForgetPasswordController();
  final String boatlogin = 'images/boatlogin.png';
  final String rectangle1 = 'images/Rectangle 1.svg';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (BuildContext ctx, BoxConstraints constraints){
      if (width > 700) {
        return Obx(() {
            return Scaffold(
              body: controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : Container(
                height: height,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Image.asset(boatlogin,fit: BoxFit.fill,width:width,height: height,),
                          Positioned(child: Container(color: Color(0xA6e82617),)
                          )
                        ],
                      ),
                    ),
                    Positioned(child: Align(alignment: Alignment.center,
                      child: Container(
                        height: height*0.7,
                        width: 500,
                        child: Card(
                          elevation: 10,
                          shadowColor: Colors.grey,
                          child: Column(
                            children: [
                              Container(height: 200,
                                width: 200,
                                child: Image.asset('images/kanlian_logo.png'),
                              ),
                              Visibility(visible: _emailVisible, child: _enterEmail()),
                              Visibility(visible: _otpVisible, child: _enterOtp()),
                              Visibility(visible: _passVisible, child: _enterPassword()),
                              // _enterEmail()
                              // _enterOtp()
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            );
          }
        );
      }else{
        return Scaffold(
          body: Container(
            height: height,
            width: width,
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              child: Column(
                children: [
                  Container(height: 200,
                    width: 200,
                    child: Image.asset('images/kanlian_logo.png'),
                  ),
                  Visibility(visible: _emailVisible, child: _enterEmail()),
                  Visibility(visible: _otpVisible, child: _enterOtp()),
                  Visibility(visible: _passVisible, child: _enterPassword()),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
  _enterEmail(){
    return Column(
      children: [
        Text("Forget Password",style: TextStyle(fontSize: 34,color: Color(0xFF2E384D),fontFamily: 'Rubix'),),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 50),
          child: CustomTextField(controller: _emailController, inputType: TextInputType.emailAddress, titleText: 'EMAIL'),
        ),
        Container(
          height: 50,
          width: 200,
          margin: EdgeInsets.only(top: 30),
          child: CustomButton(text: 'Genrate OTP', backgroundColor: Color(0xFFf02414), onPressed: ()async{
            print(_emailController.text);
            await controller.emailPost(_emailController.text);
            if(controller.message()=='Otp has been sent, please check your mail.') {
              setState(() {
              _emailVisible=false;
              _otpVisible=true;
              _passVisible=false;
            });
            }
          }),
        )
      ],
    );
  }
  _enterOtp(){
    return Column(
      children: [
        Text("Enter OTP",style: TextStyle(fontSize: 34,color: Color(0xFF2E384D),fontFamily: 'Rubix'),),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 50),
          child: CustomTextField(controller: _otpController, inputType: TextInputType.number, titleText: 'Enter Otp',inputFormate: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],),
        ),
        Container(
          height: 50,
          width: 200,
          margin: EdgeInsets.only(top: 30),
          child: CustomButton(text: 'Verify', backgroundColor: Color(0xFFf02414), onPressed: ()async{
            print(_emailController.text);
            print(_otpController.text);
            await controller.otpPost(_emailController.text, _otpController.text);
            if(controller.message()=='enter your new password.') {
              setState(() {
              _otpVisible=false;
              _passVisible=true;
              _emailVisible=false;
            });
            }
          }),
        )
      ],
    );
  }
  _enterPassword(){
    return Column(
      children: [
        Text("Change Password",style: TextStyle(fontSize: 34,color: Color(0xFF2E384D),fontFamily: 'Rubix'),),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 50),
          child: CustomTextField(controller: _passwordController, inputType: TextInputType.number, titleText: 'Enter New Password'),
        ),
        Container(
          padding: EdgeInsets.only(left: 20,right: 20,top: 10),
          // margin: EdgeInsets.only(top: 50),
          child: CustomTextField(controller: _confirmPasswordController, inputType: TextInputType.number, titleText: 'Confirm New Password')
        ),
        Container(
          height: 50,
          width: 200,
          margin: EdgeInsets.only(top: 30),
          child: CustomButton(text: 'Change Password', backgroundColor: Color(0xFFf02414), onPressed: ()async{
            await controller.changePasswordPost(_emailController.text, _passwordController.text, _confirmPasswordController.text);
            if(controller.message()=='Password Updated successfully.') {
              // context.router.pushNamed('/login');
              Navigator.pop(context);
            }
          }),
        )
      ],
    );
  }
}
