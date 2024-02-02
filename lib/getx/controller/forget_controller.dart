import 'package:admin/getx/service/forget_api.dart';
import 'package:get/get.dart';

import '../model/response_model.dart';

class ForgetPasswordController extends GetxController{
  var isLoading=false.obs;
  var response =ResponseModel().obs;
  emailPost(String string)async{
    isLoading(true);
    var object={
      "email":string
    };
    response(await ForgetPasswordApi().postEmailData(object));
    isLoading(false);
  }
  success()=>response.value.success!;
  message()=>response.value.message!;
  otpPost(String email,String otp)async{
    isLoading(true);
    var object={
      "email":email,
      "otp":otp
    };
    response(await ForgetPasswordApi().postOtpData(object));
    isLoading(false);
  }
  changePasswordPost(String email,String password,String confirmPassword)async{
    isLoading(true);
    var object={
      "email":email,
      "new_password":password,
      "confirm_password":password,
    };
    response(await ForgetPasswordApi().postPasswordData(object));
    isLoading(false);
  }
}