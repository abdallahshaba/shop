


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shop/appRoutes.dart';
import 'package:shop/views/screens/auth/login_screen.dart';
import 'package:shop/views/screens/auth/register_screen.dart';
import 'package:shop/views/screens/home/home_screen.dart';
import 'package:shop/views/screens/onboarding_screen/onboadring_view.dart';

List<GetPage<dynamic>> routes = [
   GetPage(name: AppRoute.register, page:() => const RegisterScreen(),),
   GetPage(name: AppRoute.onBoarding, page:() => const OnBoardingScreen(),),
   GetPage(name: "/", page:() => const LoginScreen(),),
   GetPage(name: AppRoute.home, page:() => const HomeScreen(),),



];