import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controller/auth_contro/login_controller.dart';
import 'package:shop/core/constant/app_colors.dart';
import 'package:shop/core/constant/app_images.dart';
import 'package:shop/core/constant/text_style.dart';
import 'package:shop/core/functions/valid_input.dart';
import 'package:shop/views/widgets/register/custom_textfield.dart';

class LoginScreen extends GetView<LoginControllerImp> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColorMain4,
      // ignore: avoid_unnecessary_containers
      body: ListView(
        children:[ 
          Form(
            key: controller.formState,
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            child:  Column(
              children:  [
                const SizedBox(height: 30,),
                const Text("Login" , style: AppTextStyle.bold24,),
                 SizedBox(
                  height: 240,
                  width: 400,
                  child: Image.asset(AppImages.login , fit: BoxFit.fill,),
                 ),
                 const SizedBox(height: 10,),
                 Text("Sign In Your Email And Password Or  Continue With Social Media" , style: AppTextStyle.regular14.copyWith(color: Color.fromARGB(255, 164, 161, 161)),),
                const SizedBox(height: 20,),
                CustomTextFormAuth(
                  hinttext: "Enter Your email" ,
                  labeltext: "email",
                  iconData: Icons.email_outlined,
                  mycontroller: controller.email ,
                  valid: (value) {
                    return validInput(value!, 2, 50, "email");
                  },
                  isNumber: false,
                  ),
                    
                const SizedBox(height: 5,),
                  CustomTextFormAuth(
                  hinttext: "Enter Your Password" ,
                  labeltext: "password",
                  iconData: Icons.password_outlined,
                  mycontroller: controller.password ,
                  valid: (value) {
                    return validInput(value!, 2, 20, "password");
                  },
                  isNumber: false,
                  ),
                const SizedBox(height: 20,),



                  GetBuilder<LoginControllerImp>(
                    builder:(controller) {
                      return MaterialButton(
                    onPressed: () async {
                      await controller.login();
                      },
                    padding: const EdgeInsets.symmetric(horizontal: 150 , vertical: 10),
                    color: AppColors.mainBackgroundColor,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20) , borderSide: BorderSide.none),
                    child: controller.isLoading==true? const SizedBox(
                      height: 30,
                      width: 30,
                      child:  CircularProgressIndicator(),) : const Text("Login" , style: AppTextStyle.bold18,),
                    );
                    },
                    )
                  // CutomButton(
                  //   onPressed: () async {
                  //     await controller.register();
                  //   },
                  //   textName: controller.isLoading==true? CircularProgressIndicator() : null ,
                  // )
              ],
            ),
           ),
         ),
     ] ),
    );
  }
}