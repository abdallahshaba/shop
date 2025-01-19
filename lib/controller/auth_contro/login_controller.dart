import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/appRoutes.dart';
import 'package:shop/core/constant/text_style.dart';
import 'package:shop/core/functions/handling_data.dart';
import 'package:shop/core/functions/status_request.dart';
import 'package:shop/core/services/shared_pref.dart';
import 'package:shop/data/source/remote/auth/login_data.dart';

abstract class LoginController extends GetxController{
  login();
}

class LoginControllerImp extends LoginController{
  bool isLoading = false;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusRequest;
  LoginData loginData = LoginData();



  @override
  login() async{
  
    if (formState.currentState!.validate()) {
      isLoading = true;
      update();
      var response = await loginData.getData(email.text, password.text);
    statusRequest = handlingData(response);
    if (StatusRequest.success== statusRequest) {
      if(response['status'] == true){
        isLoading = false;
        update();
        Get.snackbar("Cogratulations", "Successful login..");
          Get.offNamed(AppRoute.home);
          MyServices.insertToCash("token", response['data']['token']);
          print("============================================================Successssssssssssss" );
      }
      else{
        isLoading = false;
        Get.defaultDialog(
              title: "Wrong",
              titleStyle: AppTextStyle.bold18,
              middleText: "  Please check your data     ",
              middleTextStyle: AppTextStyle.regular14,
              actions: [
               const Icon(Icons.error_outline_outlined , size: 40,)
              ]);
              statusRequest = StatusRequest.faluire;
              update();
      }
    }
      
    }
    else {
      statusRequest = StatusRequest.faluire;
    }
    update();
  }

  @override
  void onInit() {
   email = TextEditingController();
   password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

}