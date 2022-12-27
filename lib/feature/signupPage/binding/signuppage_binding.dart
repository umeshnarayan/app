
import 'package:fluttertest2/core/repository/detail/detail_repo_impl.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
import 'package:fluttertest2/core/repository/signup/signup_repo_impl.dart';
import 'package:fluttertest2/feature/bottomnavigation/controller/bottomController.dart';
import 'package:fluttertest2/feature/detail/controller/detailcontroller.dart';
import 'package:fluttertest2/feature/fetch/controller/fetch_controller.dart';
import 'package:fluttertest2/feature/profile/controller/profile_controller.dart';
import 'package:fluttertest2/feature/signupPage/controller/signupController.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';



class SignupBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailRepoImpl());
    Get.lazyPut(()=>DetailController());
    Get.lazyPut(()=>ProfileController());
    Get.lazyPut(()=>FetchRepoImpl());
    Get.lazyPut(()=>Fetchcontroller());
    Get.put(SignupRepoImpl());
    Get.put(SignupController());
    Get.put(BottomNavigationController());

  }
}