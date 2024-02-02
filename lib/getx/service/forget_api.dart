import '../model/response_model.dart';
import 'baseClient.dart';

class ForgetPasswordApi{
  postEmailData(object)async{
    // var payload=json.encode(object);
    var response=await BaseClient().post('forget-password',object).catchError((){}) ;
    if(response==null) return;
    return responseModelFromJson(response);
    // return data;
  }
  postOtpData(object)async{
    // var payload=json.encode(object);
    var response=await BaseClient().post('otp-verification',object).catchError((){}) ;
    if(response==null) return;
    return responseModelFromJson(response);
    // return data;
  }
  postPasswordData(object)async{
    // var payload=json.encode(object);
    var response=await BaseClient().post('update-password',object).catchError((){}) ;
    if(response==null) return;
    return responseModelFromJson(response);
    // return data;
  }

}