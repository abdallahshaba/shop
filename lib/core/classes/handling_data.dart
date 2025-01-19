

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop/core/constant/app_images.dart';
import 'package:shop/core/functions/status_request.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});
  final StatusRequest? statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest== StatusRequest.loading ? 
       Center(child: Lottie.asset(AppImages.cart , width: 300 , height: 300)) 
      : 
      statusRequest== StatusRequest.offlineFaluire?
      Center(child: Lottie.asset(AppImages.offline, width: 300 , height: 300)) 
      :
      statusRequest== StatusRequest.serverFaluire?
      Center(child: Lottie.asset(AppImages.server, width: 300 , height: 300)) 
      :
      statusRequest== StatusRequest.faluire?
      Center(child: Lottie.asset(AppImages.dataEmpty, width: 300 , height: 300)) 
      :
      widget;

  }
}

class HandlingDataRequest extends StatelessWidget {
  const HandlingDataRequest({super.key, required this.statusRequest, required this.widget});
  final StatusRequest? statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest== StatusRequest.loading ? 
       Center(child: Lottie.asset(AppImages.laoding , width: 300 , height: 300)) 
      : 
      statusRequest== StatusRequest.offlineFaluire?
      Center(child: Lottie.asset(AppImages.offline, width: 300 , height: 300)) 
      :
      statusRequest== StatusRequest.serverFaluire?
      Center(child: Lottie.asset(AppImages.server, width: 300 , height: 300))  
      :
      widget;
  }
}