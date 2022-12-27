import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertest2/feature/common/sidebar.dart';
import 'package:fluttertest2/feature/dashboard/controller/dashController.dart';
import 'package:fluttertest2/feature/loginpage/view/login_view.dart';
import 'package:fluttertest2/feature/signupPage/view/signup_view.dart';


import 'package:get/get.dart';




class DashPage extends GetView<DashController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      drawer: NavigationDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.


      ),
      body: Center(





        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Image.asset('assets/with_time 1.png',
              height:325,
              width:700,),






            Text("Track Employee Attendance",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("with",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),),
                Text("Time",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.white,backgroundColor: Colors.green),)
              ],
            ),


            SizedBox(height:30),
            Container(
              child: ElevatedButton(
                  child: Text("                                          Log in                                     "),
                  onPressed: () {
                    Get.to(LoginPage());
                  },


                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                  ),

                  ),


                ),



              ),
            ),
            SizedBox(height:20),
            Container(
              child: ElevatedButton(
                  child: Text("                          Register Organization                          "),
                  onPressed: () {
                    Get.to(SignupPage());
                    // Get.toNamed(RoutesConstant.signup);
                  },


                  style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
              shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
              ),

              ),


            ),




              ),
            ),
          ],
        ),
      ),
    );
  }
}