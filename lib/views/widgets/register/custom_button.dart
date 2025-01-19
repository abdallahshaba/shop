import 'package:flutter/material.dart';
import 'package:shop/core/constant/app_colors.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key, required this.textName, this.onPressed});
 final String textName;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 130 , vertical: 10),
                onPressed: onPressed,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                ),
                textColor: AppColors.mainTextColor,
                color: AppColors.mainBackgroundColor,
                child:  Text(
                  textName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              );
  }
}