import 'dart:convert';

import 'package:fluttertest2/core/model/login_response.dart';
import 'package:fluttertest2/core/repository/login/login_repo.dart';
import 'package:fluttertest2/httpServices/http_service.dart';
import 'package:fluttertest2/httpServices/http_services_impl.dart';
import 'package:get/get.dart';



class LoginRepoImpl implements LoginRepo {
  late HttpService _httpService;

  LoginRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }


  // @override
  // Future<LoginResponse> deleteAPI(String id) async {
  //   // TODO: implement loginAPI
  //
  //   final response = await _httpService.deleteAPIRequest(id);
  //   Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
  //   return LoginResponse.fromJson(ResponseMap);
  // }


  // @override
  // Future<LoginResponse> signupAPI(String username, String contactName,
  //     String emailId, String password) async {
  //   // TODO: implement loginAPI
  //   final response = await _httpService.signupAPIRequest(
  //       username, contactName, emailId, password);
  //   Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
  //   return LoginResponse.fromJson(ResponseMap);
  // }

  // @override
  // Future<List<FetchDataResponse>?> fetchDataAPI(String email) async {
  //   try {
  //     final response = await _httpService.fetchDataAPIRequest(email);
  //     if (response.statusCode == 200) {
  //       return FetchDataResponseFromJson(response.toString());
  //     }
  //   } on Exception catch (e) {
  //     print(e);
  //     return null;
  //   }
  //   return null;
  // }
  // List<FetchDataResponse> FetchDataResponseFromJson(String str) => List<FetchDataResponse>.from(json.decode(str).map((x) => FetchDataResponse.fromJson(x)));
  //
  // @override
  // Future<List<FetchDataResponse>?> updateDataAPI(String id) async{
  //   // TODO: implement updateDataAPI
  //   try {
  //     final response = await _httpService.updateDataRequet(id);
  //     if (response.statusCode == 200) {
  //       return UpdateFetchDataResponseFromJson(response.toString());
  //     }
  //   } on Exception catch (e) {
  //     print(e);
  //     return null;
  //   }
  //   return null;
  // }
  // List<FetchDataResponse> UpdateFetchDataResponseFromJson(String str) => List<FetchDataResponse>.from(json.decode(str).map((x) => FetchDataResponse.fromJson(x)));

  @override
  Future<List<LoginResponse>?> loginAPI(String userName, String password) async{
    // TODO: implement loginAPI
    try{
      final response = await _httpService.loginAPIRequest(userName,password);
      if (response.statusCode == 200) {
        return loginResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<LoginResponse> loginResponseFromJson(String str) => List<LoginResponse>.from(json.decode(str).map((x) => LoginResponse.fromJson(x)));




}