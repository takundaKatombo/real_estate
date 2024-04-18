import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/ui/common/app_colors.dart';
import 'package:real_estate/ui/screens/onboarding/onboarding.dart';

import '../../common/ui_helpers.dart';
import 'product_tour.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth(context),
            height: screenHeight(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/splash.png"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kcSplashBackground.withOpacity(0.7),
                    kcSplashBackground, // Semi-transparent color
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: screenHeightFraction(context, dividedBy: 2.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logoPicSplash.png",
                    // height: 100,
                    // width: 100,
                  ),
                  Text(
                    "Rise ",
                    style: TextStyle(
                        color: kcWhite,
                        fontFamily: "Lato",
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Real Estate",
                    style: TextStyle(
                        color: kcWhite,
                        fontFamily: "Lato",
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: SizedBox(
              height: screenHeightFraction(context, dividedBy: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: screenHeightFraction(context, dividedBy: 20),
                    width: screenWidthFraction(context, dividedBy: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => Onboarding(),
                          ),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: kcWhite,
                            fontSize: 16,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    "Made with Flutter",
                    style: TextStyle(
                        color: kcWhite,
                        fontSize: 10,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "v.1.0",
                    style: TextStyle(
                        color: kcWhite,
                        fontSize: 10,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
