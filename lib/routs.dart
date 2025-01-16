


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shop/appRoutes.dart';
import 'package:shop/views/screens/auth/register_screen.dart';
import 'package:shop/views/screens/onboarding_screen/onboadring_view.dart';

List<GetPage<dynamic>> routes = [
   GetPage(name: AppRoute.register, page:() => const RegisterScreen(),),
   GetPage(name: "/", page:() => const OnBoardingScreen(),),
];