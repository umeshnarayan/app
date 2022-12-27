

import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';

abstract class FetchRepo{
  Future<List<SignupfetchResponse>? >fetchDataAPI(String number);
  Future<SignupResponse> InsertTimeinAPI(String id ,String currentdate , String currenttime, String currentaddress);
  Future<SignupResponse> timeOutAPI(String id ,String currentdate , String currenttime, String currentaddress);
}