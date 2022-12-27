import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:fluttertest2/core/model/signup_fetch_response.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo.dart';
import 'package:fluttertest2/core/repository/fetch/fetch_repo_impl.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Fetchcontroller extends GetxController{


  var isProficPicPathSet = false.obs;
  var profilePicPath = "".obs;

  void setProfileImagePath(String path) {
    profilePicPath.value = path;
    isProficPicPathSet.value = true;
  }



  // var number="8770440995";

  late FetchRepo _fetchRepo;

  Fetchcontroller() {_fetchRepo = Get.find<FetchRepoImpl>();}

  RxString name = ''.obs;
  RxString id = ''.obs;
  RxString emailId = ''.obs;
  RxString phone = ''.obs;
  RxString password = ''.obs;
  RxBool loader = true.obs;



  var currentdate=''.obs;
  var currenttime=''.obs;
  var  currentDateTime = DateTime.now().obs;
  var latitude = 'Getting Latitude..'.obs;
  var longitude = 'Getting Longitude..'.obs;
 RxString currentaddress = 'Getting Address..'.obs;
  late StreamSubscription<Position> streamSubscription;




  List< SignupfetchResponse>internDataList = < SignupfetchResponse>[];





  @override
  void onInit() async {
    super.onInit();
    getLocation();
    fetchData();
    currentDateTime= DateTime.now().obs;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    streamSubscription.cancel();
  }

  getLocation() async {
    bool serviceEnabled;

    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    streamSubscription =
        Geolocator.getPositionStream().listen((Position position) {
          latitude.value = 'Latitude : ${position.latitude}';
          longitude.value = 'Longitude : ${position.longitude}';
          getAddressFromLatLang(position);
        });
  }

  Future<void> getAddressFromLatLang(Position position) async {
    List<Placemark> placemark =
    await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    currentaddress.value = 'Address:${place.name},${place.thoroughfare},${place.subLocality},${place.locality},${place.administrativeArea},${place.postalCode},${place.country}';
  }


  //
  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   fetchData();
  //   super.onInit();
  // }


  todayDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedTime = DateFormat('kk:mm:a').format(now);
    String formattedDate = formatter.format(now);
    print(formattedTime);
    currentdate.value =formattedDate;
    currenttime.value = formattedTime;
    print(formattedDate);
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



  InsertAPI()async{


  {

      final response = await _fetchRepo.InsertTimeinAPI(id.toString() ,currentdate.string , currenttime.string, currentaddress.value);
      print("Response print");


    }


  }

  TimeOutAPI() async{
    final timeOutResponse = await _fetchRepo.timeOutAPI(id.toString(),currentdate.toString(), currenttime.toString(),currentaddress.value);
  }







  // fetchData()async{
  //   loader.value=true;
  //   final response = await _fetchRepo.fetchDataAPI( number);
  //   internDataList = response!;

// nameController.text = response[0].name;sir


  //   print("Line Number 21");
  //   print(response![0].name);
  //   name.value = response[0].name!;
  //   loader.value=false;
  //
  //
  //
  //   emailId.value = response[0].emailId!;
  //   loader.value=false;
  // }

}