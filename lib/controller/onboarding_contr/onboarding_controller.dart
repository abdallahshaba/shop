
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/appRoutes.dart';
import 'package:shop/views/widgets/onboarding_widgets/onboarding_list.dart';

abstract class OnboardingController extends GetxController {
  onPageChange(int value);
  next();
  skip();

}

class OnBoardingControllerImp extends OnboardingController{
  int currentPage = 0;
  late PageController pageController ;
  
  @override
  onPageChange(int value) {
    currentPage = value;
    update();
  }
  
  @override
  next() {
    currentPage++;
    update();
    if (currentPage > onBoardingList.length-1) {
       Get.offAllNamed(AppRoute.register);
    }
    pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeIn);
  }

 @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
  
  @override
  skip() {
    currentPage = onBoardingList.length-1;
    pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeIn);

    update();
  }
}