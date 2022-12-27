import 'package:flutter/widgets.dart';
import 'package:fluttertest2/core/repository/login/login_repo.dart';
import 'package:fluttertest2/core/repository/login/login_repo_impl.dart';
import 'package:fluttertest2/feature/bottomnavigation/view/bottom_view.dart';
import 'package:fluttertest2/feature/loginpage/view/login_view.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{

  late TextEditingController userNameController = new TextEditingController();
  late TextEditingController userPasswordController = new TextEditingController();

  GlobalKey<FormState> loginFormKey = new GlobalKey<FormState>();

  late LoginRepo _loginRepo;

  LoginController() {_loginRepo = Get.find<LoginRepoImpl>();}


  // loginAPI()async{
  //   final response = await _loginRepo.loginAPI(userNameController.text,userPasswordController.text);
  //   print(response![0].response);
  //   if(response[0].response==1){
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //     prefs.setInt("response", response[0].response!);
  //     prefs.setString("name", response[0].name!);
  //     prefs.setString("email", response[0].emailId!);
  //     prefs.setString("phone", response[0].phone!);
  //     prefs.setString("password", response[0].password!);
  //
  //     // Get.to(HomePage());
  //
  //
  //   }
  //   else{  Get.to(LoginPage());}
  //
  //     // {
  //   //   Get.snackbar("Warning", "Invalid credential",snackPosition: SnackPosition.BOTTOM);
  //   // }
  //
  //   print(response[0].response);
  //
  //   print("Line Number 19");
  // }



 loginAPI()async{
    var isValide = loginFormKey.currentState?.validate();


      final response = await _loginRepo.loginAPI(
          userNameController.text, userPasswordController.text);
      print("Response print");
      if (response![0].response == 1) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("Id", response[0].id!);
        prefs.setInt("response", response[0].response!);
        prefs.setString("name", response[0].name!);
        prefs.setString("email", response[0].emailId!);
        prefs.setString("phone", response[0].phone!);
        prefs.setString("password", response[0].password!);
        prefs.setBool("islogin", true);

        Get.to(HomePage());

    }
else {
        Get.snackbar("Warning", "Invalid credential",
            snackPosition: SnackPosition.BOTTOM);
      }
    print(isValide);

      print(response[0].response);

      print("Line Number 19");
  }

}































//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class LoginController extends GetxController{
//
//
//   GlobalKey<FormState> loginFormKey=GlobalKey<FormState>();
// // final loginFormKey = GlobalKey<FormState>();
// final nameController = TextEditingController();
// final emailController = TextEditingController();
//
//
// validate(){
//   if (loginFormKey.currentState!.validate()) {
//     print("hjgdjkd");
//   }
// }
//
// RxBool checkValue= false.obs;
//
// changeCheckBoxValue(value)
// {
//   checkValue.value=value;
// }
// }