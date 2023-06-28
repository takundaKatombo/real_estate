import 'package:flutter/material.dart';

import '../../common/ui_helpers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/stairway.png"),
          ),
        ),
      ),
    );
  }
}
