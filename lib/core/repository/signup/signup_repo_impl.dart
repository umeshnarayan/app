import 'dart:convert';

import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';
import 'package:fluttertest2/core/repository/signup/signup_repo.dart';
import 'package:fluttertest2/httpServices/http_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../httpServices/http_services_impl.dart';




class SignupRepoImpl implements SignupRepo{
  late HttpService _httpService;

  SignupRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }



  @override
  Future<SignupResponse> updateAPI(String id) async {
    // TODO: implement loginAPI

    final response = await _httpService.updateAPIRequest(id);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }





  @override
  Future<SignupResponse> deleteAPI(String id) async {
    // TODO: implement loginAPI

    final response = await _httpService.deleteAPIRequest(id);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }




  @override
  Future<List<SignupfetchResponse>>fetchDataAPI(String number) async{
    // TODO: implement loginAPI
    final response = await _httpService.fetchDataAPIRequest( number);
    return  SignupfetchResponseFromJson(response.toString());
  }
  List< SignupfetchResponse> SignupfetchResponseFromJson(String str) => List< SignupfetchResponse>.from(json.decode(str).map((x) =>  SignupfetchResponse.fromJson(x)));







  @override
  Future<SignupResponse>signupAPI(String companyname, String number, String email , String Password) async{

    final response = await _httpService.signupAPIRequest(companyname, number, email, Password);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }



}