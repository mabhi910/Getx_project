import 'dart:convert';
import 'AppMainVariable.dart';
import 'baseUrls.dart';
import 'package:http/http.dart' as http;


class BaseClient {
  var client = http.Client();
  // var getHeader={
  //   'Authorization': 'Bearer ${AppMainVariable.tokenId}',
  //   'Content-type': 'application/json'
  // };
  // Future<dynamic> get(String api) async {
  //   try {
  //     var uri = Uri.parse(baseUrl + api);
  //     var response = await client.get(uri,
  //         // headers: getHeader
  //     );
  //     print(response.statusCode);
  //     if (response.statusCode == 200) {
  //
  //       return response.body;
  //     } else {
  //       throw Exception();
  //     }
  //   }  catch (e) {
  //     print('get error== ${e.toString()}');
  //   }
  // }
  Future<dynamic> post(String api, dynamic object) async {
    print(object);
    try {
      var uri = Uri.parse(baseUrl + api);
      // var payload = json.encode(object);
      // print(payload);
      var response = await client.post(uri,
        body: object
          // ,headers: getHeader
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        print(response.body);
        return response.body;
      } else {
        throw Exception(response.body);
        //throw exception
      }
    } catch (e) {
      print('post error== ${e.toString()}');
    }
  }

  // Future<dynamic> put(String api) async {
  //   var uri = Uri.parse(baseUrl + api);
  //
  //   var response = await client.get(uri);
  //
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     //throw exception
  //   }
  // }
  //
  // Future<dynamic> del(String api) async {
  //   var uri = Uri.parse(baseUrl + api);
  //
  //   var response = await client.get(uri);
  //
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     //throw exception
  //   }
  // }
}
