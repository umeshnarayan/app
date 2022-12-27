import 'package:flutter/material.dart';
import 'package:fluttertest2/core/getPages.dart';
import 'package:fluttertest2/core/routes_constant.dart';

import 'package:get/get.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutesConstant.splash,
      getPages: getpages,
    );
  }
}


