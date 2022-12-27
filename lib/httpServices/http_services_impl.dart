import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:fluttertest2/core/url_constant.dart';
import 'package:fluttertest2/httpServices/http_service.dart';




class HttpServiceImpl implements HttpService{
  late Dio _dio;

  @override
  void init() {
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }
  @override
  Future<Response> loginAPIRequest(String userName, String password) async {
    // TODO: implement loginAPIRequest
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.login+'userName=$userName&password=$password');
      response = await _dio.get('${URLConstant.login}userName=$userName&password=$password');
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;
  }



  @override
  Future<Response> signupAPIRequest(String companyname, String number, String email , String Password) async{
    // TODO: implement signupAPIRequest
    Response response;

    try {
      print(URLConstant.baseUrl+URLConstant.signup+'name=$companyname&emailId=$email&password=$Password&phone=$number');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.signup+'name=$companyname&emailId=$email&password=$Password&phone=$number');
    }
    on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }



  @override
  Future<Response> fetchDataAPIRequest(String number) async {
    Response response;
    try
    {
      print('${URLConstant.fetch}number=$number');
      response = await _dio.get('${URLConstant.fetch}number=$number');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }



  @override
  Future<Response> detailFetchDataAPIRequest(String number) async {
    Response response;
    try
    {
      print('${URLConstant.fetch}number=$number');
      response = await _dio.get('${URLConstant.fetch}number=$number');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }






  @override
  Future<Response> detailDataAPIRequest(String number) async {
    Response response;
    try
    {
      print('${URLConstant.fetch}number=$number');
      response = await _dio.get('${URLConstant.fetch}number=$number');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }




  @override
  Future<Response> fetchUpdateAPIRequest(String id) async {
    Response response;
    try
    {
      print('${URLConstant.updateDataFetchIntern}id=$id');
      response = await _dio.get('${URLConstant.updateDataFetchIntern}id=$id');
    } on DioError catch (e)
    {
      throw Exception(e.message);
    }
    return response;
  }







  @override
  Future<Response> deleteAPIRequest(String id) async{
    // TODO: implement id
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }





  @override
  Future<Response> updateAPIRequest(String id) async{
    // TODO: implement id
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.updateDataFetchIntern+'id=$id');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.updateDataFetchIntern+'id=$id');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }








  @override
  Future<Response> InsertTimeinAPIRequest(String id ,String currentdate , String currenttime, String currentaddress) async{
    // TODO: implement signupAPIRequest
    Response response;

    try {
      print(URLConstant.baseUrl+URLConstant.timein+'userId=$id&currentDate=$currentdate&currentTime=$currenttime&currentLocation=$currentaddress');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.timein+'userId=$id&currentDate=$currentdate&currenTime=$currenttime&currentLocation=$currentaddress');
    }
    on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> InsertTimeoutAPIRequest(String id, String currentdate, String currenttime, String currentaddress  ) async{
    // TODO: implement InsertTimeoutAPIRequest
    Response response;
    try{
      print("Line Number 161");
      print(id);
      print("currentdate ${currentdate}");
      print("currenttime ${currenttime }");
      print("currentaddress ${currentaddress}");
      print(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$currentdate&currentTime=$currenttime&currentLocation=$currentaddress');
      response = await _dio.get(URLConstant.baseUrl+URLConstant.timeout+'userId=$id&currentDate=$currentdate&currentTime=$currenttime&currentLocation=$currentaddress');
    } on DioError catch(e){
      throw Exception(e.message);
    }

    return response;
  }





}
















// @override
// Future<Response> fetchDataAPIRequest(String email ) async {
//   Response response;
//   try {
//     print(URLConstant.baseUrl+URLConstant.fetch);
//     response = await _dio.post(URLConstant.baseUrl+URLConstant.fetch+'emailId=$email');
//   } on DioError catch (e) {
//     print(e.message);
//     throw Exception(e.message);
//   }
//   return response;
// }



  //   try{
  //     print('${URLConstant.baseUrl+URLConstant.signup}');
  //     response = await _dio.post(URLConstant.baseUrl+URLConstant.signup);
  //   } on DioError catch (e) {
  //     print(e.message);
  //     throw Exception(e.message);
  //   }
  //   return response;
  // }

