import 'package:equatable/src/equatable.dart';
import 'package:flutter/material.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class GetLoginEvent extends LoginEvent {
  final String? email;
  final bool? remember;
  final String? password;
  final BuildContext? context;

  const GetLoginEvent({this.email, this.password, this.context, this.remember});

  @override
  List<Object?> get props => [];
}
class logoutEvent extends LoginEvent {
  final BuildContext? context;

  const logoutEvent({
    this.context,
  });

  @override
  List<Object?> get props => [];
}