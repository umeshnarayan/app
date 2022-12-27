 import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo.dart';
import 'package:fluttertest2/httpServices/http_service.dart';
import 'package:fluttertest2/httpServices/http_services_impl.dart';
import 'package:get/get.dart';

class FetchRepoImpl implements FetchRepo{
  late HttpService _httpService;

  FetchRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }



  @override
  Future<List<SignupfetchResponse>?> fetchDataAPI(String number)
  async{
    // TODO: implement fetchDataAPI

    try {
      final response = await _httpService.fetchDataAPIRequest( number);     if (response.statusCode == 200) {
        return FetchDataResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<SignupfetchResponse> FetchDataResponseFromJson(String str) => List<SignupfetchResponse>.from(json.decode(str).map((x) => SignupfetchResponse.fromJson(x)));



  @override
  Future<SignupResponse>InsertTimeinAPI(String id ,String currentdate , String currenttime, String currentaddress) async{
    final response = await _httpService.InsertTimeinAPIRequest(id, currentdate, currenttime, currentaddress);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }





@override
Future<SignupResponse>timeOutAPI(String id ,String currentdate , String currenttime, String currentaddress) async{
  try{
    final response = await _httpService.InsertTimeoutAPIRequest(id, currentdate, currenttime, currentaddress);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }on DioError catch(e){
    throw Exception(e.message);
  }

}


}