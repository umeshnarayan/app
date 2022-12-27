import 'package:flutter/material.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/repository/detail/detail_repo.dart';
import 'package:fluttertest2/core/repository/detail/detail_repo_impl.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class DetailController extends GetxController{
  late DetailRepo _detailRepo;
  // late FetchupRepo _fetchupRepo;
  // late FetchupRepo _fetchupdateRepo;

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  RxString phone="".obs;




  DetailController() {
    _detailRepo = Get.find<DetailRepoImpl>();
    // _deleteRepo = Get.find<DeleteRepoImpl>();
    // _fetchupdateRepo = Get.find<FetchupRepoImpl>();

  }
  // var number='8770440995';
  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;
  RxString id = ''.obs;
  RxString phonenumber = ''.obs;


  RxList<SignupfetchResponse> internDataList = <SignupfetchResponse>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    printdata();
    super.onInit();
  }






  printdata()async{
    print("Good Task");
    final response=await  SharedPreferences.getInstance();
    SharedPreferences prefs =await SharedPreferences.getInstance();
    phonenumber.value= prefs.getString("phone")!;
    id.value= prefs.getString("Id")!;

    print(phone.value);

    print("hello");
    fetchData();
  }



  fetchData()async{
    loader.value=true;
    final response = await _detailRepo.detailFetchDataAPI(phonenumber.value);
    if(response!=null){
      internDataList.value = response;
      print("Line Number 21");
      print(response![0].id);
      print(response![0].name);
      print(response![0].emailId);
      print(response![0].password);
      print(response![0].phone);
      id.value = response[0].id!;
      name.value = response[0].name!;
      emailId.value = response[0].emailId!;
      password.value = response[0].password!;
      phonenumber.value = response[0].phone!;
      loader.value = false;
    }
  }

  deleteDataInterns(String id)async {
    final response = await _detailRepo.deleteAPI(id);

    print("Line Number 35");
    print(response);
    print(response.response);
    if (response!= null) {
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString("loginName", response.id.toString());
      // response.id = prefs.getString("id")!;
      if(response.response==1){
        Get.defaultDialog(
            title: 'Deleted',
            content: const Center(child:Text('Data has been Deleted'),)
        ).then((value){
          fetchData();
        });
      }
    }


  }
  fetchupdate(String id) async{
    final response = await _detailRepo.fetchUpdateAPI(id);
    if(response!=null){
      print('response ${response[0].id}');
      idController.text=response[0].id.toString();
      nameController.text =response[0].name.toString();
      emailIdController.text =response[0].emailId.toString();
      numberController.text =response[0].phone.toString();


      Get.defaultDialog(
          title: 'update Data',
          content: Container(
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: idController,
                    ),
                    TextFormField(
                      controller:nameController,
                    ),
                    TextFormField(
                      controller: emailIdController,
                    ),
                    TextFormField(
                      controller: numberController,
                    ),



                  ],
                ),

              )



          )



      );



    }




  }










}














//
// import 'package:fluttertest2/core/model/signup_fetch_response.dart';
// import 'package:fluttertest2/core/repository/detail/detail_repo.dart';
// import 'package:fluttertest2/core/repository/detail/detail_repo_impl.dart';
// import 'package:fluttertest2/core/repository/fetch/fetch_repo.dart';
// import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
// import 'package:get/get.dart';
//
//
// class DetailController extends GetxController {
//
//
//   var number = "8770440995";
//   late DetailRepo _detailRepo;
//
//   DetailController() {
//     _detailRepo = Get.find<DetailRepoImpl>();
//   }
//
//   RxString name = ''.obs;
//   RxString emailId = ''.obs;
//   RxBool loader = true.obs;
//
//
//   RxList<SignupfetchResponse>internDataList = <SignupfetchResponse>[].obs;
//
//
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     DetailData();
//     super.onInit();
//   }
//
//   DetailData() async {
//     loader.value = true;
//     final response = await _detailRepo.detailFetchDataAPI(number);
//     internDataList.value = response!;
//     print("Line Number 21");
//     print(response![0].name);
//     name.value = response[0].name!;
//     loader.value = false;
//
//
//     emailId.value = response[0].emailId!;
//     loader.value = false;
//   }
//
//
//
//
//   deleteDataInterns(String id) async {
//     final response = await _detailRepo.deleteAPI(id);
//     print("Line Number 35");
//     print(response);
//     print(response.response);
//     if (response != null) {
//       // SharedPreferences prefs = await SharedPreferences.getInstance();
//       // prefs.setString("loginName", response.fname!);
//
//
//
//     }
//   }
//
//
//
// }
