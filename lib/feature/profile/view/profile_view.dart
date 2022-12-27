import 'package:fluttertest2/feature/fetch/controller/fetch_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:fluttertest2/feature/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()=>Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(

              width: 450,
              height: 370,

          padding: new EdgeInsets.all(10.0),


            child: Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.greenAccent,
              elevation: 10,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height:20),

                    CircleAvatar(
                      backgroundColor: Colors.redAccent[400],
                      radius: 30,
                      child: Text(
                        'image',
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ), //Text
                    ), //CircleAvat
                    controller.loader.value==false ? Center(child: CircularProgressIndicator()) : Text(controller.name.value,style:TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.black),),
                    controller.loader.value==false ? Center(child: CircularProgressIndicator()) :  Text(controller.emailId.value,style:TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),

SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text('Name',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.black),),
                        controller.loader.value==false ? Center(child: CircularProgressIndicator()) : Text(controller.name.value),

                        Text('Email',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.black),),
                        controller.loader.value==false ? Center(child: CircularProgressIndicator()) :  Text(controller.emailId.value),
                        Text('Phone',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.black),),
                        controller.loader.value==false ? Center(child: CircularProgressIndicator()) : Text(controller.phone.value),
                        Text('Password',style:TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.black),),
                        controller.loader.value==false ? Center(child: CircularProgressIndicator()) : Text(controller.password.value),
                      ],
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),

      )



      ),
    );
  }

}
