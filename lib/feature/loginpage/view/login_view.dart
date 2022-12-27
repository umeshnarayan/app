import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertest2/feature/loginpage/controller/loginController.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';


class LoginPage extends GetView<LoginController>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        key: controller.loginFormKey,

        child: Center(
          child: Container(
            width: 500,
            height: 650,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white10,
              // boxShadow: [
              //   BoxShadow(
              //     color: Color.fromARGB(255, 201, 204, 202),
              //     offset: const Offset(
              //       5.0,
              //       5.0,
              //     ),
              //     blurRadius: 10.0,
              //     spreadRadius: 2.0,
              //   ),
              //   BoxShadow(
              //     color: Colors.white,
              //     offset: const Offset(0.0,0.0),
              //     blurRadius: 0.0,
              //     spreadRadius: 0.0,
              //   ),
              // ],
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 12, 30, 10),
                          child: Text('Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 12, 30, 10),
                          width: 40,
                          height: 35,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.greenAccent,),
                          child: Icon(Icons.document_scanner_sharp,
                            size: 20,
                            color: Colors.green,
                          ),
                        ),
                      ]
                  ),


                  Column(

                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: TextFormField(
                          controller: controller.userNameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "Email ID/Phone Number ",
                            border:OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter the Valid Email';
                            }
                            return null;
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: TextFormField(
                          controller: controller.userPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "  Password",
                            border:OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Correct Password ';
                            }
                            return null;
                          },
                        ),
                      ),




                        //   Obx(()=>  Checkbox(value:controller.checkValue.value,
                        //       onChanged: (value) {
                        //
                        //         controller.changeCheckBoxValue(value);
                        //       },
                        //     ),
                        //
                        // ),



                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgot Password', style:TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                          ],
                        ),
                      ),




                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: (
                                  Text("Sign In",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),





                        onPressed: (){

                          // controller.validate();
                          controller.loginAPI();

                        },


                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.green),
                          shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                          ),

                          ),


                        ),


                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 8, 30, 8),
                        child: Text('OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),



                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                              child: Row(children: [


                                  Image.asset('assets/img.png',
                                  height:25,
                                  width:25,),


                                Text(' Login with Google',
                                  style:TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        onPressed: (){
                        },

                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.white),
                          shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                          ),

                          ),


                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 8, 30, 6),
                        child: Text('By Signig in, you agree to our Terms & Conditions & Privacy Policy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Company not registered? Sign Up'),
                    ],
                  ),
                ],
              ),
            ),

          ),
        ),

      ),

    );
  }

}