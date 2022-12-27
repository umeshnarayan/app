import 'package:fluttertest2/feature/detail/controller/detailcontroller.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Obx(()=>SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // SizedBox(
                //   height: 5,
                // ),
                // controller.loader.value==true ? Center(child: CircularProgressIndicator()) : Text(controller.name.value),


             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(

                  width: 450,
                  height: 850,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height:5),


                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,

                     child: DataTable(

                       border:TableBorder.all(
                         color: Colors.red,
                         width:2,
                       ),



                       columns:const [
                         DataColumn(label: Text('Id') ),
                         DataColumn(label: Text('Name') ),
                         DataColumn(label: Text('Email') ),
                         DataColumn(label: Text('Password') ),
                         DataColumn(label: Text('Phone') ),
                         DataColumn(label: Text('Delete') ),
                         DataColumn(label: Text('Update') ),
                       ],


                       rows: controller.internDataList.map((user) {
                         return DataRow(cells: [
                           DataCell(
                             SizedBox(
                               width: Get.width * 0.22,
                               child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(user.id!)
                                 ],
                               ),
                             ),
                           ),


                           DataCell(
                             SizedBox(
                               width: Get.width * 0.22,
                               child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(user.name.toString())
                                 ],
                               ),
                             ),
                           ),


                           DataCell(
                             SizedBox(
                               width: Get.width * 0.37,
                               child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(user.emailId.toString())
                                 ],
                               ),
                             ),
                           ),


                           DataCell(
                             SizedBox(
                               width: Get.width * 0.37,
                               child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(user.password.toString())
                                 ],
                               ),
                             ),
                           ),




                           DataCell(
                             SizedBox(
                               width: Get.width * 0.37,
                               child: Column(
                                 crossAxisAlignment:
                                 CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Text(user.phone.toString())
                                 ],
                               ),
                             ),
                           ),


                           DataCell(
                               ElevatedButton(onPressed: (){
                                controller.deleteDataInterns(user.id!);
                               },child: Text("Delete"),)                           ),



                           DataCell(
                             ElevatedButton(onPressed: (){
                               controller.fetchupdate(user.id!);
                             },child: Text("Update"),)                           ),






                         ]);


                       }).toList(),)

                        )

                      ],
                    ),
                  ),

                ),






              ],
            ),


    ]
            )
          ),
        ),
        )
    );

  }

}
