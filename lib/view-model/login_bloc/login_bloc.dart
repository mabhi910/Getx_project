import 'package:admin/Routing/route_generator.dart';
import 'package:admin/helper/helper.dart';
import 'package:admin/helper/utils/shared_pref.dart';
import 'package:admin/model/login_model.dart';
import 'package:admin/model/logout_model.dart';
import 'package:admin/repo/auth_repo.dart';
import 'package:admin/view-model/login_bloc/login_event.dart';
import 'package:admin/view-model/login_bloc/login_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/src/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthRepo authRepo;

  Dio? dio;

  LoginBloc({ this.dio,required this.authRepo}) : super(LoginState()) {
    on<GetLoginEvent>((
        event,
        emit,
        ) async {
      await _getLoginEvent(event, emit);
    });
    on<logoutEvent>((event, emit) async {
      await _logoutEvent(event, emit);
    });
  }


  _getLoginEvent(GetLoginEvent event, Emitter<LoginState> emit)async {
    emit(state.copyWith(status: false));
    try{
      emit(state.copyWith(status: true));
      Map<String, dynamic> req = {};

      req['email'] = event.email;
      req['password'] = event.password;

      LoginModel loginModel = await authRepo.loginService(req, event.context!);
      if(loginModel.success!){
        print("alksjdf");
        emit(state.copyWith(status: false));
        showCustomAlert(context: event.context!, title: "Warning", message: loginModel.message!);
        await SharedPref.setString(key: "token", data: loginModel.data!.token.toString());
        await SharedPref.setBool(key: "User-detail", data: true);
        await SharedPref.setBool(key: "login", data: true);
        event.context!.router.pushNamed(RouteConst.dashboard);
      }
    }catch(e){
      emit(state.copyWith(status: false));
      print(e.toString());
    }
  }

  _logoutEvent(logoutEvent event, Emitter<LoginState> emit) async{
    try{
      LogoutModel logoutModel = await authRepo.logoutService();
      if (logoutModel.message == "You have been successfully logged out.") {
        await SharedPref.clear();
        await SharedPref.setString(key: 'token', data: '');
        event.context!.router.pushNamed("/login");
      }
      }catch(e){

    }
  }
}