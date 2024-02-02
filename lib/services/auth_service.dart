import 'package:admin/helper/utils/app_constants.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:admin/model/login_model.dart';
import 'package:admin/model/logout_model.dart';
import 'package:admin/repo/auth_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';

class AuthService implements AuthRepo {
  final Dio dio;

  AuthService({required this.dio});

  @override
  Future loginService(Map<String, dynamic> req, BuildContext context) async {
    try {
      Response response = await dio.post(ApiConst.login, data: req);
      LoginModel loginModel = LoginModel.fromJson(response.data);
      return loginModel;
    } catch (e) {
      var error = await SharedPref.getString(key: 'error-msg');
      var statusCode = await SharedPref.getInt(key: 'error-code');
      print("The Strored status code is =====>>>>>>>>>> $statusCode");

      print(e.toString());
    }
  }


  @override
  Future logoutService() async {
    try {
      Response response = await dio.post(
        ApiConst.logout,
      );
      LogoutModel logoutModal = LogoutModel.fromJson(response.data);
      return logoutModal;
    } catch (e) {
      var error = await SharedPref.getString(key: 'error-msg');
      print(e.toString());
    }
  }
}