import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';
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
          width: 200,
          height: 200,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Skip"),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    slides.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                color: Colors.green,
                child: ElevatedButton(
                  child: Text("Next"),
                  onPressed: () {
                    if (currentIndex == slides.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
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
            ],
          ),
        ],
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
  String image;

  Slider({required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // contains container
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image given in slider
            Image(image: AssetImage(image)),
            SizedBox(height: 25),
          ],
        ),
      ),
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
