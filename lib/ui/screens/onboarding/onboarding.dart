import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';
import 'package:real_estate/ui/common/ui_helpers.dart';
import 'package:real_estate/ui/screens/home/home.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<SliderModel> slides = new List<SliderModel>.empty(growable: true);
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    slides = getSlides();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcWhite,
        elevation: 0,
        leading: Image.asset(
          "assets/images/logoPicSplash.png",
          fit: BoxFit.fill,
          // width: 400,
          // height: 400,
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    color: skipLightGrey,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text("Skip"))),
          ),
        ],
      ),
      body: SizedBox(
        height: screenHeight(context),
        child: Column(
          children: [
            Text(
              "Find best place \nto stay in good price ",
              style: TextStyle(
                  color: kcDarkGreyColor,
                  fontFamily: "Lato",
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
              style: TextStyle(
                  color: kcDarkGreyColor,
                  fontFamily: "Lato",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            SizedBox(
              height: screenHeightFraction(context, dividedBy: 1.5),
              child: Stack(
                children: [
                  Expanded(
                    // height: screenHeightFraction(context, dividedBy: 1.5),
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        itemCount: slides.length,
                        itemBuilder: (context, index) {
                          // contents of slider
                          return Slider(
                            image: slides[index].getImage()!,
                          );
                        }),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          slides.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0.9),
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.all(40),
                      width: screenWidthFraction(context, dividedBy: 3),
                      color: Colors.green,
                      child: ElevatedButton(
                        child: Text("Next"),
                        onPressed: () {
                          if (currentIndex == slides.length - 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          }
                          _controller.nextPage(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn);
                        },
                        // textColor: Colors.white,
                        // style: ButtonStyle( shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(25),
                        // ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

// container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
    );
  }
}

// ignore: must_be_immutable
// slider declared
class Slider extends StatelessWidget {
  final String image;

  Slider({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeightFraction(context, dividedBy: 1.5),
      child: Image(image: AssetImage(image)),
    );
  }
}

class SliderModel {
  late String? image;

// images given
  SliderModel({this.image});

// setter for image
  void setImage(String getImage) {
    image = getImage;
  }

// getter for image
  String? getImage() {
    return image;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = List<SliderModel>.empty(growable: true);
  SliderModel sliderModel = SliderModel();

// 1
  sliderModel.setImage("assets/images/corouselfirst.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// 2
  sliderModel.setImage("assets/images/corouselsecond.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// 3
  sliderModel.setImage("assets/images/corouselthird.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}
