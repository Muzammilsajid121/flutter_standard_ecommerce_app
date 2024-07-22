
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/signup_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //replace Material app with Get Material app 
    return GetMaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
  
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: 
      const LoginScreen()
      // const OnBoardingScreen(),
    );
  }
}