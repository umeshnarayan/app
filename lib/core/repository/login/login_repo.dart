import 'package:fluttertest2/core/model/login_response.dart';




abstract class LoginRepo{
  Future<List<LoginResponse>?> loginAPI(String userName, String password);
}