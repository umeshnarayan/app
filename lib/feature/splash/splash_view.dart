import 'package:flutter/material.dart';
import 'package:fluttertest2/feature/splash/splash_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (dynamic _) => Scaffold(
          body: Center(
            child: Image.asset('assets/with_time 1.png'),
          ),
        )
    );
  }
}