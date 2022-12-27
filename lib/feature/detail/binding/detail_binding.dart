import 'package:fluttertest2/core/repository/detail/detail_repo_impl.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
import 'package:fluttertest2/core/repository/signup/signup_repo_impl.dart';
import 'package:fluttertest2/feature/detail/controller/detailcontroller.dart';
import 'package:fluttertest2/feature/fetch/controller/fetch_controller.dart';
import 'package:fluttertest2/feature/profile/controller/profile_controller.dart';

import 'package:get/get.dart';

class Dashboardbinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailRepoImpl());
    Get.lazyPut(()=>DetailController());
    Get.lazyPut(()=>ProfileController());
    Get.lazyPut(()=>Fetchcontroller());


    Get.lazyPut(()=>FetchRepoImpl());
    Get.put(SignupRepoImpl());


  }

}