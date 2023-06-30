import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/ui/common/app_colors.dart';
import 'package:real_estate/ui/screens/onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        primaryColor: kcPrimaryColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      home: const SplashScreen(),
    );
  }
}
