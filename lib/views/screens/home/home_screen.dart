import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop/controller/auth_contro/login_controller.dart';

class HomeScreen extends GetView<LoginControllerImp> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text("Home Screen"),
      ),
    );
  }
}