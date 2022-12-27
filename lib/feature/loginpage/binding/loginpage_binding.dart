

import 'package:fluttertest2/core/repository/detail/detail_repo_impl.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
import 'package:fluttertest2/core/repository/login/login_repo_impl.dart';
import 'package:fluttertest2/feature/detail/controller/detailcontroller.dart';
import 'package:fluttertest2/feature/fetch/controller/fetch_controller.dart';
import 'package:fluttertest2/feature/loginpage/controller/loginController.dart';
import 'package:fluttertest2/feature/profile/controller/profile_controller.dart';
import 'package:get/get.dart';



class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailRepoImpl());
    Get.lazyPut(()=>Fetchcontroller());
    Get.lazyPut(()=>DetailController());
    Get.lazyPut(()=>ProfileController());
    Get.lazyPut(()=>FetchRepoImpl());
    Get.put(LoginRepoImpl());
    Get.put(LoginController());
    // Get.lazyPut(()=>LoginRepoImpl());

  }
}