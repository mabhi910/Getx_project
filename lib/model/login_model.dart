/// success : true
/// message : "User logged in successfully."
/// data : {"token":"11|eQolVEc0Abrz3eRNLAgNWmXqIPSdxNqLlUDqSGbR","name":"Admin"}
/// user_record_updated_key : null

class LoginModel {
  LoginModel({
      bool? success, 
      String? message, 
      Data? data, 
      dynamic userRecordUpdatedKey,}){
    _success = success;
    _message = message;
    _data = data;
    _userRecordUpdatedKey = userRecordUpdatedKey;
}

  LoginModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _userRecordUpdatedKey = json['user_record_updated_key'];
  }
  bool? _success;
  String? _message;
  Data? _data;
  dynamic _userRecordUpdatedKey;
LoginModel copyWith({  bool? success,
  String? message,
  Data? data,
  dynamic userRecordUpdatedKey,
}) => LoginModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
  userRecordUpdatedKey: userRecordUpdatedKey ?? _userRecordUpdatedKey,
);
  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;
  dynamic get userRecordUpdatedKey => _userRecordUpdatedKey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['user_record_updated_key'] = _userRecordUpdatedKey;
    return map;
  }

}

/// token : "11|eQolVEc0Abrz3eRNLAgNWmXqIPSdxNqLlUDqSGbR"
/// name : "Admin"

class Data {
  Data({
      String? token, 
      String? name,}){
    _token = token;
    _name = name;
}

  Data.fromJson(dynamic json) {
    _token = json['token'];
    _name = json['name'];
  }
  String? _token;
  String? _name;
Data copyWith({  String? token,
  String? name,
}) => Data(  token: token ?? _token,
  name: name ?? _name,
);
  String? get token => _token;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['name'] = _name;
    return map;
  }

}