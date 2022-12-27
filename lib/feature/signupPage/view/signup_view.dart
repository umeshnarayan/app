import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertest2/feature/bottomnavigation/view/bottom_view.dart';
import 'package:fluttertest2/feature/signupPage/controller/signupController.dart';

import 'package:get/get.dart';


class SignupPage extends GetView<SignupController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(

          child: Container(
            // width:400,
            width: Get.width,
            height: 650,




            //
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: Colors.white10,
            //   boxShadow: [
            //     BoxShadow(
            //       color: Color.fromARGB(255, 201, 204, 202),
            //       offset: const Offset(
            //         5.0,
            //         5.0,
            //       ),
            //       blurRadius: 10.0,
            //       spreadRadius: 2.0,
            //     ), //BoxShadow
            //     BoxShadow(
            //       color: Colors.white,
            //       offset: const Offset(0.0, 0.0),
            //       blurRadius: 0.0,
            //       spreadRadius: 0.0,
            //     ),
            //     //BoxShadow
            //   ],
            // ),



            child: Container(
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // first row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 10, 30, 0),




                      ),
                    ],
                  ),
                  //for form
                  Form(
                    key: controller.signupFormKey,
                    child: Column(
                      //form starts

                      children: [



                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Enter the  name',
                              border: OutlineInputBorder(),
                            ),
                            controller: controller.userNameController,
                            validator: (value) {
                              if (value == "" || value == null) {
                                return "enter name";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            // keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              labelText: 'Enter email id',
                              border: OutlineInputBorder(),
                            ),
                            controller: controller.userEmailController,
                            validator: (value) {
                              if (value == "" || value == null) {
                                return "enter Email";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            // keyboardType: TextInputType.none,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: ' Enter the Password',
                              border: OutlineInputBorder(),
                            ),
                            controller: controller.userPasswordController,
                            validator: (value) {
                              if (value == "" || value == null) {
                                return "enter password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),




                        Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: TextFormField(
                            // keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              labelText: 'Enter the Phone number',
                              border: OutlineInputBorder(),
                            ),
                            controller: controller.userContactController,
                            validator: (value) {
                              if (value == "" || value == null) {
                                return "enter Phone number";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 105),

                          child: ElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // Get.to(HomePage());
                              controller.signupAPI();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                          ),
                        ),





                        //
                        // ElevatedButton(
                        //     onPressed: () {
                        //       controller.fetchDataInterns();
                        //     },
                        //     child: Text("fetch")),
                        //
                        // Obx(() => controller.loader.value == false?
                        //
                        //
                        // Center(
                        //         child: CircularProgressIndicator(),
                        //       )
                        //     : Container(
                        //         height: 200,
                        //
                        //
                        //         child: ListView.builder(
                        //             itemCount: controller.internDataList.length,
                        //             itemBuilder: (BuildContext context, index) {
                        //
                        //
                        //               return Row(
                        //                 mainAxisAlignment:
                        //                     MainAxisAlignment.spaceBetween,
                        //                 children: [
                        //
                        //                   Text(controller
                        //                       .internDataList[index].id! ),
                        //                   Text(controller
                        //                       .internDataList[index].name!),
                        //
                        //                   Text(controller
                        //                       .internDataList[index].emailId!),
                        //                   Text(controller
                        //                       .internDataList[index].password!),
                        //
                        //                   Text(controller.internDataList[index]
                        //                       .phone!),
                        //
                        //
                        //
                        //                   ElevatedButton(
                        //                       onPressed: () {
                        //                         controller.deleteData(controller
                        //                             .internDataList[index].id!);
                        //                       },
                        //                       child: Text("Delete")),
                        //
                        //
                        //                   ElevatedButton(
                        //                       onPressed: () {
                        //                         controller.updateData(controller
                        //                             .internDataList[index].id!);
                        //                       },
                        //                       child: Text("update")),
                        //
                        //                 ],
                        //               );
                        //             }),
                        //       )
                        // )
                      ],
                    ),
                  ),
                  //for last
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




























// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:fluttergetx/feature/dashboard/controller/dashController.dart';
// import 'package:fluttergetx/feature/loginpage/view/login_view.dart';
// import 'package:get/get.dart';
//
// class SignupPage extends GetView<DashController> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // return Scaffold(
//     //   body: Center(
//     //     child: Column(
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: [
//     //         Text("Enter your mobile Number", textScaleFactor: 2,),
//
//     //     ElevatedButton(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           Padding(
//     //             padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
//     //             child: (
//     //                 Text("OTP",
//     //                   style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                   ),
//     //                 )
//     //             ),
//     //           ),
//     //         ],
//     //       ),
//     //
//     //
//     //
//     //
//     //
//     //       onPressed: (){
//     //
//     //         // controller.validate();
//     //
//     //       },
//     //     ),
//     //     Padding(
//     //       padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
//     //       child: Text('OR',
//     //         textAlign: TextAlign.center,
//     //         style: TextStyle(
//     //           color: Colors.grey,
//     //           fontWeight: FontWeight.w600,
//     //         ),
//     //       ),
//     //     ),
//     //     ElevatedButton(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           Padding(
//     //             padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
//     //             child: Row(children: [
//     //
//     //               Text(' Sign up with Google',
//     //                 style:TextStyle(
//     //                   color: Colors.green,
//     //                   fontWeight: FontWeight.w900,
//     //                 ),
//     //               ),
//     //             ]),
//     //           ),
//     //         ],
//     //       ),
//     //       onPressed: (){
//     //       },
//     //
//     //       style: ButtonStyle(
//     //         backgroundColor: MaterialStatePropertyAll(Colors.white),
//     //         shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.orange,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
//     //         ),
//     //
//     //         ),
//     //
//     //
//     //       ),
//     //
//     //     ),
//     //     Padding(
//     //       padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
//     //       child: Text('By Signig in you agree to our Terms & Conditions',
//     //         textAlign: TextAlign.center,
//     //         style: TextStyle(
//     //           fontWeight: FontWeight.w600,
//     //         ),
//     //       ),
//     //
//     //     ),
//     //
//     //   ],
//     // ),
//
//     //
//     //   ),
//     // );
//
//     return Scaffold(
//       body: Form(
//         // key: controller.signupFormKey,
//
//         child: Center(
//           child: Container(
//             width: 500,
//             height: 600,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white10,
//               boxShadow: [
//                 // BoxShadow(
//                 //   color: Color.fromARGB(255, 201, 204, 202),
//                 //   offset: const Offset(
//                 //     5.0,
//                 //     5.0,
//                 //   ),
//                 //   blurRadius: 10.0,
//                 //   spreadRadius: 2.0,
//                 // ),
//                 // BoxShadow(
//                 //   color: Colors.white,
//                 //   offset: const Offset(0.0, 0.0),
//                 //   blurRadius: 0.0,
//                 //   spreadRadius: 0.0,
//                 // ),
//               ],
//             ),
//             child: Container(
//               margin: EdgeInsets.all(15),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(5, 12, 30, 10),
//                           child: Text(
//                             'Enter your Phone Number',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w900,
//                             ),
//                           ),
//                         ),
//
//                       ]),
//
//                   Container(
//
//                     child: Text(
//                       'Your Phone number will be used to register your company. You shall receive a text message with thw verification code',
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//
//                   Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(bottom: 22),
//                         child: TextFormField(
//                           // controller: controller.nameController,
//                           obscureText: false,
//                           decoration: InputDecoration(
//                             labelText: "Phone no",
//                             border: OutlineInputBorder(),
//                           ),
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Enter  Number';
//                             }
//                             return null;
//                           },
//                         ),
//                       ),
//
//                       // Obx(()=>  Checkbox(value:controller.checkValue.value,
//                       //   onChanged: (value) {
//                       //
//                       //     controller.changeCheckBoxValue(value);
//                       //   },
//                       // ),
//                       //
//                       // ),
//
//                       SizedBox(height:58,),
//                       ElevatedButton(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
//                               child: (Text(
//                                 "Send OTP",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               )),
//                             ),
//                           ],
//                         ),
//                         onPressed: () {
//                           // controller.validate();
//                         },
//
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStatePropertyAll(Colors.green),
//                           shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
//                           ),
//
//                           ),
//
//
//                         ),
//
//
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
//                         child: Text(
//                           'OR',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                       ElevatedButton(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
//                               child: Row(children: [
//
//
//                                 Image.asset('assets/img.png',
//                                   height:25,
//                                   width:25,
//
//                                 ),
//
//
//                                 Text(
//                                   'Sign up with Google',
//                                   style: TextStyle(
//                                     color: Colors.green,
//                                     fontWeight: FontWeight.w900,
//                                   ),
//                                 ),
//                               ]),
//                             ),
//                           ],
//                         ),
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStatePropertyAll(Colors.white),
//                           shape: MaterialStatePropertyAll(
//                             RoundedRectangleBorder(
//                               side: BorderSide(
//                                   color: Colors.green,
//                                   width: 1,
//                                   style: BorderStyle.solid),
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                           ),
//                         ),
//                       ),
//
//
//
//                       SizedBox(height:10),
//
//
//                       Text(
//                         'Company is already registered? Login',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//
//            SizedBox(height:20),
//
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
//                         child: Text(
//                           'By Signig in you agree to our Terms & Conditions & Privacy Policy',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
