import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_contr/onboarding_controller.dart';
import 'package:shop/core/constant/app_colors.dart';
import 'package:shop/core/constant/text_style.dart';

class ButtonsOnBoarding extends GetView<OnBoardingControllerImp> {
  const ButtonsOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Column(
      children: [
         MaterialButton(
                onPressed: (){
                  controller.next();
                },
                padding: const EdgeInsets.symmetric(horizontal: 120 , vertical: 10),
                textColor: Colors.white,
                color: AppColors.mainBackgroundColor,
                child:  Text('Continue' , style: AppTextStyle.bold18,),
                ),


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: MaterialButton(
                                   onPressed: (){
                                    controller.skip();
                                   },
                                   padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 10 , ),
                                   textColor: Colors.white,
                                   child:  Text('Skip' , style: AppTextStyle.bold18.copyWith(color: const Color.fromARGB(255, 104, 102, 102)),),
                                   ),
                 ),
      ],
    );
  }
}