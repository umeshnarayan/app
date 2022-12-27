

import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';

abstract class SignupRepo{
  Future<SignupResponse> updateAPI(String id);
  Future<SignupResponse> deleteAPI(String id);
  Future<SignupResponse> signupAPI(String companyname, String number, String email , String Password);
  Future<List<SignupfetchResponse>?> fetchDataAPI( String number);
}