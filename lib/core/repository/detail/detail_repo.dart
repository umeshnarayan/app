

import 'package:fluttertest2/core/model/login_response.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/model/signup_response.dart';

abstract class DetailRepo{

  Future<LoginResponse> deleteAPI(String id);
  Future<List<SignupfetchResponse>? >detailFetchDataAPI(String number);
  Future<List<SignupfetchResponse>? >fetchUpdateAPI(String id);



}