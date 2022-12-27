
import 'package:fluttertest2/core/routes_constant.dart';
import 'package:get/get.dart';


class DashController extends GetxController{

 logging(){
   Get.toNamed(RoutesConstant.login);
}

logging2(){

   Get.toNamed(RoutesConstant.signup);
  }
}