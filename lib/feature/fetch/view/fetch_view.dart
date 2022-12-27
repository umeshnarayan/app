
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertest2/feature/fetch/controller/fetch_controller.dart';
import 'package:fluttertest2/feature/fetch/view/component/timein_pic.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class FetchPage extends GetView<Fetchcontroller>{
  // late TimeinPicture timeinPicture;
  var forcheck=TimeinPicture();
  @override

  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body:Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

       //  Container(
       //
       //     width: 450,
       //    height: 190,
       //     child: Card(
       //    child: Column(
       //    mainAxisSize: MainAxisSize.min,
       //       children: <Widget>[
       //         SizedBox(height:20),
       //
       //        Row(
       //          children: [
       //
       //
       //            Column(
       //               crossAxisAlignment: CrossAxisAlignment.start,
       //               children: [
       //                  controller.loader.value==true ? Center(child: CircularProgressIndicator()) : Text(controller.name.value,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,),),
       //                 controller.loader.value==true ? Center(child: CircularProgressIndicator()) :  Text(controller.emailId.value,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),),
       //               ],
       //             ),
       //
       //
       //            Column(
       //              crossAxisAlignment: CrossAxisAlignment.end,
       //              children: [
       //                Padding(
       //
       //                  padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
       //                  child: CircleAvatar(
       //                    backgroundColor: Colors.greenAccent[400],
       //                    radius: 30,
       //                    child: Text(
       //                      'image',
       //                      style: TextStyle(fontSize: 15, color: Colors.white),
       //                    ), //Text
       //                  ),
       //                ), //CircleAvatar
       //              ],
       //            ),
       //
       //          ],
       //        ),
       //
       //
       //
       //         Padding(
       //           padding: const EdgeInsets.all(18.0),
       //           child: ElevatedButton(
       //             child: Text('Time in'),
       //             onPressed: () {
       //               // Get.toNamed(Routes.login);
       //               Get.to(LoginPage());
       //             },
       //           ),
       //         ),
       //
       //      ],
       //    ),
       // ),
       //
       //  ),
       //

















        Container(

              width: 450,
              height: 220,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height:20),

                    Row(
                      children: [



                         Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              controller.loader.value==false ? Center(child: CircularProgressIndicator()) : Text(controller.name.value,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,),),
                              controller.loader.value==false ? Center(child: CircularProgressIndicator()) :  Text(controller.emailId.value,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,),),
                            ],
                          ),



                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Padding(
                              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: TimeinPicture(),
                            ),
                            const SizedBox(
                              height:10 ,
                            ),


                            // Padding(
                            //
                            //   padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                            //   child: CircleAvatar(
                            //     backgroundColor: Colors.greenAccent[400],
                            //     radius: 30,
                            //     child: Text(
                            //       'image',
                            //       style: TextStyle(fontSize: 15, color: Colors.white),
                            //     ), //Text
                            //   ),
                            // ), //CircleAvatar
                            //


                          ],
                        ),

                      ],
                    ),



                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Obx(()=>forcheck.change==true
                          ? ElevatedButton(
                         child:Text("Time In", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)),
                        onPressed: () {
                          controller.InsertAPI();

                          controller.todayDate();

                          // timeinPicture.takePhoto(ImageSource.camera);

                          forcheck.takePhoto(ImageSource.camera);

                        },
                      )
                          :
                        ElevatedButton(
                            child:Text("Time Out", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)),
                        onPressed: () {
                          controller.TimeOutAPI();
                          // Get.toNamed(Routes.login);
                          // Get.to(LoginPage());
                          // controller.fetchData();


                          controller.todayDate();

                          // timeinPicture.takePhoto(ImageSource.camera);

                          forcheck.takePhoto(ImageSource.camera);

                        },
                      ),

                    ),
                    )
                  ],
                ),
              ),

            ),













            SizedBox(height:40),





           Container(

             height: 250,

             child: Card(
               color: Colors.greenAccent,
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [



               Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [


                          Icon(Icons.location_on, size: 30),
                        Text("Your Location",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),),
                          Icon(Icons.refresh, size: 30),
                          ],
                     ),


                  //
                  // Icon(
                  //   Icons.location_on,
                  //   color: Colors.yellow,
                  //   size: 40,
                  // ),
                  // SizedBox(
                  //   height: 4,
                  // ),
                  // Text(
                  //   'Umesh Narayan Location',
                  //   style: TextStyle(
                  //       color: Colors.yellow,
                  //       fontSize: 30,
                  //       decoration: TextDecoration.underline),
                  // ),




                  SizedBox(
                    height: 10,
                  ),

                  Text(DateFormat("dd-mm-yyyy kk:mm:ss a").format(DateTime.now()),),



                  SizedBox(
                    height: 6,
                  ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                      controller.currentaddress.value,


                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                        ),

                ],
              ),
           ),
           ),












          ],
                 ),
               ),
            )
    );

  }

}
