class LoginState{
  final bool? status;

  LoginState({this.status = false});

  LoginState copyWith({
    final bool? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return "LoginState{status:$status}";
  }
}