import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_contr/onboarding_controller.dart';
import 'package:shop/core/constant/app_colors.dart';
import 'package:shop/views/widgets/onboarding_widgets/onboarding_list.dart';

class DorOnBoarding extends GetView<OnBoardingControllerImp> {
  const DorOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder:(controller) => Expanded(
          flex: 2,
           child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    ...List.generate(
                  onBoardingList.length, (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    height: 10,
                    width: controller.currentPage==index? 15 : 8,
                    decoration: BoxDecoration(
                      color: controller.currentPage==index? AppColors.mainBackgroundColor : const Color.fromARGB(255, 148, 137, 137),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    duration: const Duration(milliseconds: 500),
                    ),
                    )
                ],
                ),
         ),
      );
  }
}