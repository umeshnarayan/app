

import 'package:fluttertest2/core/routes_constant.dart';
import 'package:fluttertest2/feature/bottomnavigation/binding/bottom_navigation.dart';
import 'package:fluttertest2/feature/bottomnavigation/view/bottom_view.dart';
import 'package:fluttertest2/feature/dashboard/binding/dash_binding.dart';
import 'package:fluttertest2/feature/dashboard/view/dash_view.dart';

import 'package:fluttertest2/feature/loginpage/binding/loginpage_binding.dart';
import 'package:fluttertest2/feature/loginpage/view/login_view.dart';
import 'package:fluttertest2/feature/signupPage/binding/signuppage_binding.dart';
import 'package:fluttertest2/feature/signupPage/view/signup_view.dart';
import 'package:fluttertest2/feature/splash/splash_binding.dart';
import 'package:fluttertest2/feature/splash/splash_view.dart';
import 'package:get/get.dart';



List<GetPage> getpages = [




   GetPage(
      name: RoutesConstant.login,
      page:()=> LoginPage(),
      binding: LoginBinding()
  ),


  GetPage(
      name: RoutesConstant.dash,
      page:()=> DashPage(),
      binding: DashBinding()
  ),


  GetPage(
      name: RoutesConstant.signup,
      page:()=> SignupPage(),
      binding: SignupBinding()
  ),


  GetPage(
      name: RoutesConstant.bottom,
      page:()=> HomePage(),
      binding: BottomBinding()
  ),

  GetPage(
      name: RoutesConstant.splash,
      page:()=> SplashScreen(),
      binding: Splashbinding()
  )


];