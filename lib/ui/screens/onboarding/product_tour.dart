import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';

import '../../common/ui_helpers.dart';

class ProductTour extends StatelessWidget {
  const ProductTour({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              decoration: BoxDecoration(color: kcLightGrey),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: screenWidthFraction(context, dividedBy: 3),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("skip"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kcMediumGrey,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: screenHeight(context) * 0.4,
                child: Column(children: [
                  verticalSpaceMassive,
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Find best place \n to stay in good price",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: screenWidth(context) * 0.8,
                  height: screenHeight(context) * 0.6,
                  child: PageView(
                      onPageChanged: (int) {},
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          3,
                          (index) => Container(
                                child: Image.asset(
                                  "assets/images/page_view_$index.png",
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ))),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: screenWidthFraction(context, dividedBy: 2),
                  height: screenHeightFraction(context, dividedBy: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Next"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kcPrimaryColor,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
