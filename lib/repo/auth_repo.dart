import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future loginService(Map<String, dynamic> req, BuildContext context);
  Future logoutService();

}
