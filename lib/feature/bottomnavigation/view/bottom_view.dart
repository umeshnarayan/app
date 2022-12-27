import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest2/feature/bottomnavigation/controller/bottomController.dart';
import 'package:fluttertest2/feature/detail/view/detail_view.dart';
import 'package:fluttertest2/feature/fetch/view/fetch_view.dart';
import 'package:fluttertest2/feature/profile/view/profile_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {

      BottomNavigationController bottomNavigationController = Get.find();

  HomePage({Key? key}) : super(key: key);

  final screens = [
   FetchPage(),
    DetailPage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: bottomNavigationController.currentIndex.value,
         children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showUnselectedLabels: true,
          // selectedIconTheme: IconThemeData(color: Colors.green),
          onTap: (index) {
            bottomNavigationController.changeIndex(index);
          },
          currentIndex: bottomNavigationController.currentIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "My details",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: "profile",
              backgroundColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}