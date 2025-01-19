
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_contr/onboarding_controller.dart';
import 'package:shop/views/widgets/onboarding_widgets/buttons_onboarding.dart';
import 'package:shop/views/widgets/onboarding_widgets/custom_slider.dart';
import 'package:shop/views/widgets/onboarding_widgets/dot_onboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const  Scaffold(
      body:  Column(
        children: [
           SizedBox(
            height: 70,
          ),
          Expanded(
            flex: 6,
            child: CustomSliderOnBoarding()
          ),
         DorOnBoarding(),
         ButtonsOnBoarding(),
         SizedBox(height: 30,)
        ],
      ),
    );
  }
}
