import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/ui/common/app_colors.dart';

import '../../common/ui_helpers.dart';
import 'login_email.dart';

class LogInOption extends StatefulWidget {
  const LogInOption({super.key});

  @override
  State<LogInOption> createState() => _LogInOptionState();
}

class _LogInOptionState extends State<LogInOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/loginOpt1.png"),
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/loginOpt2.png"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/loginOpt3.png"),
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/loginOpt4.png")
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                text: ("Ready to "),
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 25,
                    // fontWeight: FontWeight.bold,
                    color: kcPrimaryBlueColor),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'explore ?',
                      style: TextStyle(fontWeight: FontWeight.w800)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 60,
                margin: EdgeInsets.all(40),
                width: screenWidthFraction(context, dividedBy: 1.5),
                // color: Colors.green,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail_outlined,
                        color: kcWhite,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with email",
                        style: TextStyle(color: kcWhite),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (builder) => LoginEmail()));
                  },
                  // textColor: Colors.white,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // thickness: 1,
                  color: kcMediumGrey,
                  // indent: 20,
                  // endIndent: 20,
                  height: 1,
                  width: screenWidthFraction(context, dividedBy: 2.5),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'or',
                  style: TextStyle(color: kcMediumGrey, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  // thickness: 1,
                  color: kcMediumGrey,
                  // indent: 20,
                  // endIndent: 20,
                  height: 1,
                  width: screenWidthFraction(context, dividedBy: 2.5),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 60,
                    width: screenWidthFraction(context, dividedBy: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kcVeryLightGrey),
                    child: Center(
                      child: SvgPicture.asset("assets/images/facebookicon.svg"),
                    )),
                Container(
                    height: 60,
                    width: screenWidthFraction(context, dividedBy: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kcVeryLightGrey),
                    child: Center(
                      child: SvgPicture.asset("assets/images/googleicon.svg"),
                    ))
              ],
            ),
            Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  text: ("Dont have an account? "),
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: kcPrimaryBlueColor),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(fontWeight: FontWeight.w800)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
