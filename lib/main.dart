import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shop/core/constant/toooken.dart';
import 'package:shop/core/services/shared_pref.dart';
import 'package:shop/routs.dart';
import 'package:shop/views/screens/home/home_screen.dart';
import 'package:shop/views/screens/onboarding_screen/onboadring_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyServices.initial();
  token = MyServices.getCashData("token");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: token != null && token != "" ? const HomeScreen() : const OnBoardingScreen(),
      getPages: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}