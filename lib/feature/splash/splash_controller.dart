import 'dart:async';

import 'package:fluttertest2/core/global.dart' as globals;
import 'package:fluttertest2/core/routes_constant.dart';
import 'package:get/get.dart';


class SplashController extends GetxController{

  @override
  void onReady() {
    Timer(const Duration(seconds: 3),
            () =>
     globals.autologin.value==false ? Get.offAllNamed(RoutesConstant.dash) : Get.offAllNamed(RoutesConstant.login)
    );
    super.onReady();
  }


}