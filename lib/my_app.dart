
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/bindings/ganeral_bindings.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //-- replace Material app with Get Material app 
    return GetMaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GaneralBindings(),

      //-- show circular loader or meanwhile Authentication repo decide to show which screen
      home: 
      const Scaffold(backgroundColor: Colors.transparent,
        body: Center(child: CircularProgressIndicator(color: Colors.white,))  )
 
      // const HomeScreen(),
    );
  }
}