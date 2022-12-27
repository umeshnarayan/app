import 'dart:convert';
import 'package:fluttertest2/core/model/login_response.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';
import 'package:fluttertest2/core/repository/detail/detail_repo.dart';
import 'package:fluttertest2/httpServices/http_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../httpServices/http_services_impl.dart';




class DetailRepoImpl implements DetailRepo{
  late HttpService _httpService;

  DetailRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }






  @override
  Future<LoginResponse> deleteAPI(String id) async {
    // TODO: implement loginAPI

    final response = await _httpService.deleteAPIRequest(id);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return LoginResponse.fromJson(ResponseMap);
  }




  @override
  Future<List<SignupfetchResponse>?> detailFetchDataAPI(String number)
  async{
    // TODO: implement fetchDataAPI

    try {
      final response = await _httpService.detailFetchDataAPIRequest( number);     if (response.statusCode == 200) {
        return DetailfetchDataResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<SignupfetchResponse> DetailfetchDataResponseFromJson(String str) => List<SignupfetchResponse>.from(json.decode(str).map((x) => SignupfetchResponse.fromJson(x)));



  @override
  Future<List<SignupfetchResponse>?> fetchUpdateAPI(String id)
  async{
    // TODO: implement fetchDataAPI

    try {
      final response = await _httpService.fetchUpdateAPIRequest( id);     if (response.statusCode == 200) {
        return fetchupdateDataResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<SignupfetchResponse> fetchupdateDataResponseFromJson(String str) => List<SignupfetchResponse>.from(json.decode(str).map((x) => SignupfetchResponse.fromJson(x)));









}