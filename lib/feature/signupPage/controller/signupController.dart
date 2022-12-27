import 'package:flutter/widgets.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/repository/signup/signup_repo.dart';
import 'package:fluttertest2/core/repository/signup/signup_repo_impl.dart';
import 'package:fluttertest2/feature/bottomnavigation/view/bottom_view.dart';
import 'package:fluttertest2/feature/signupPage/view/signup_view.dart';

import 'package:get/get.dart';



class SignupController extends GetxController{

  var isProficPicPathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProficPicPathSet.value = true;
  }

  RxInt stdAge = 0.obs;
  RxString fName = ''.obs;

  late TextEditingController userNameController = new TextEditingController();
  late TextEditingController userContactController = new TextEditingController();
  late TextEditingController userEmailController = new TextEditingController();
  late TextEditingController userPasswordController = new TextEditingController();
  GlobalKey<FormState> signupFormKey = new GlobalKey<FormState>();

  //
  // late TextEditingController updateCompanyNameController = new TextEditingController();
  // late TextEditingController updateContactNameController = new TextEditingController();
  // late TextEditingController updateEmailId = new TextEditingController();
  // late TextEditingController updatePassword = new TextEditingController();


  late SignupRepo _signupRepo;
  var number = '8819930429';


  RxBool loader = false.obs;
  List< SignupfetchResponse>internDataList = < SignupfetchResponse>[];


  SignupController(){
    _signupRepo = Get.find<SignupRepoImpl>();
  }




  void onInIt() async{
    fetchDataInterns();

  }





  //
  // fetchDataInterns() async{
  //   final fetchResponse = await _signupRepo.fetchDataAPI(email);
  //   print(fetchResponse[0].emailId);
  //   print("Ho gaya fetch");
  // }



  fetchDataInterns() async{
    loader.value=false;
    final fetchResponse = await _signupRepo.fetchDataAPI(number);
    if(fetchResponse!=null) {
      loader.value=true;
      internDataList = fetchResponse;

      print(fetchResponse[0].name);
      print(fetchResponse[0].phone);
      print(fetchResponse[0].emailId);
      print(fetchResponse[0].password);
    }
    print("ho gaya fetch");
  }

  updateData(String id)async{
    final response = await _signupRepo.updateAPI(id);
    print("Line Number 35");
    print(response);
    print(response.response);
    if(response!=null) {
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString("loginName", response.fname!);

    }

  }

  deleteData(String id)async{
    final response = await _signupRepo.deleteAPI(id);
    print("Line Number 35");
    print(response);
    print(response.response);
    if(response!=null) {
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString("loginName", response.fname!);

    }

  }


  signupAPI()async{
    var isValide = signupFormKey.currentState?.validate();

    if(isValide==true){

      final response = await _signupRepo.signupAPI(userNameController.text,userContactController.text,userEmailController.text,userPasswordController.text);
      print("Response print");
      // Get.to(HomePage());

    }


    else{  Get.to(SignupPage());}

    print(isValide);
  }

}