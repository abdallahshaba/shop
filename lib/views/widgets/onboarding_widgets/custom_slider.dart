
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_contr/onboarding_controller.dart';
import 'package:shop/core/constant/text_style.dart';
import 'package:shop/views/widgets/onboarding_widgets/onboarding_list.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
   Get.put(OnBoardingControllerImp());  
    return PageView.builder(
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      controller: controller.pageController,
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        Text(
                          onBoardingList[index].title , style: AppTextStyle.bold18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                            child: Image.asset(
                          onBoardingList[index].image,
                          width: 400,
                          height: 350,
                          fit: BoxFit.cover,
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(onBoardingList[index].text,
                              style: AppTextStyle.regular16
                                  .copyWith( color: const Color.fromARGB(255, 99, 99, 99) ),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    );
  }
}