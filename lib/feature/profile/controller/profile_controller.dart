import 'package:fluttertest2/core/repository/fetch/fetch_repo.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileController extends GetxController{
  // var demoVal='mohit';

  // var number="8770440995";
  late FetchRepo _fetchRepo;

  ProfileController() {_fetchRepo = Get.find<FetchRepoImpl>();}

  RxString name = ''.obs;
  RxString emailId = ''.obs;
  RxString password = ''.obs;
  RxString phone = ''.obs;
  RxString id = ''.obs;
  RxBool loader = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    super.onInit();
  }














  fetchData()async{
    final response = await SharedPreferences.getInstance();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    name.value= prefs.getString("name")!;
    id.value= prefs.getString("Id")!;
    emailId.value= prefs.getString("email")!;
    phone.value= prefs.getString("phone")!;

    print(emailId);
    print(name);
    print(phone);

  }


// DetailData()async{
  //   loader.value=true;
  //   final response = await _fetchRepo.fetchDataAPI( number);
  //   print("Line Number 21");
  //   print(response![0].name);
  //   name.value = response[0].name!;
  //   loader.value=false;
  //
  //   emailId.value = response[0].emailId!;
  //   loader.value=false;
  //
  //   password.value = response[0].password!;
  //   loader.value=false;
  //
  //
  //   phone.value = response[0].phone!;
  //   loader.value=false;
  // }

}