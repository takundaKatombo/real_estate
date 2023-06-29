import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';

import '../../common/ui_helpers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  // colorFilter:
                  //     ColorFilter.mode(Colors.lightBlueAccent, BlendMode.colorBurn),
                  fit: BoxFit.fill,

                  image: AssetImage("assets/images/stairway.png"),
                ),
              ),
            ),
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.lightBlueAccent.withOpacity(0.3),
                    Colors.blue,
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: Column(children: [
                verticalSpaceMassive,
                verticalSpaceMassive,
                Text(
                  "Real Estate",
                  style: TextStyle(
                    fontSize: 40, //TODO:get size from ui helper file
                    color: kcVeryLightGrey,
                  ),
                ),
                verticalSpaceMassive,
                verticalSpaceMassive,
                SizedBox(
                    width: screenWidthFraction(context, dividedBy: 2),
                    height: screenHeightFraction(context, dividedBy: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: kcPrimaryColor),
                        onPressed: () {},
                        child: Text("let\'s start")))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
