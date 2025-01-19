import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/appRoutes.dart';
import 'package:shop/core/constant/text_style.dart';
import 'package:shop/core/functions/handling_data.dart';
import 'package:shop/core/functions/status_request.dart';
import 'package:shop/data/source/remote/auth/register_data.dart';

abstract class RegisterController extends GetxController{
  register();

}

class RegisterControllerImp extends RegisterController{
  bool isLoading = false;
  GlobalKey<FormState>formState = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  RegisterData registerData = RegisterData();
  StatusRequest? statusRequest ;

  @override
  register() async {
    
    if (formState.currentState!.validate()) {
       isLoading = true;
      update();
   var response = await registerData.getData(username.text, email.text, password.text, phone.text);
   update();
   statusRequest = handlingData(response);
   if (StatusRequest.success == statusRequest) {
     if (response['status'] == true) {
          Get.offNamed(AppRoute.onBoarding);
         Get.snackbar("Done", "Account created" ); 
       isLoading = false;
     }
     else {
      isLoading = false;
              Get.defaultDialog(
              title: "ُWarning",
              titleStyle: AppTextStyle.bold18,
              middleText: "  Phone number or email already exists     ",
              middleTextStyle: AppTextStyle.regular14,
              actions: [
               const Icon(Icons.error_outline , size: 40,)
              ]);
              statusRequest = StatusRequest.faluire;
        }
   }
    }
     statusRequest = StatusRequest.serverFaluire;
  }

    @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
@override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

}