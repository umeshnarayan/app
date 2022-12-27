import 'package:dio/dio.dart';

abstract class HttpService {
  void init();
  Future<Response> loginAPIRequest(String userName, String userPassword);
  Future<Response> signupAPIRequest(String companyname, String number, String email , String Password);
  Future<Response> fetchDataAPIRequest(String number);
  Future<Response> detailDataAPIRequest(String number);
  Future<Response> deleteAPIRequest(String id);
  Future<Response> updateAPIRequest(String id);
  Future<Response>  InsertTimeinAPIRequest(String id ,String currentdate , String currenttime, String currentaddress);
  Future<Response>  InsertTimeoutAPIRequest(String id ,String currentdate , String currenttime, String currentaddress);
  Future<Response> detailFetchDataAPIRequest(String number);
  Future<Response> fetchUpdateAPIRequest(String id);
}
