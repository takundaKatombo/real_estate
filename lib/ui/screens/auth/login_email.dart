import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/ui/common/ui_helpers.dart';

import '../../common/app_colors.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenWidth(context),
            height: screenHeightFraction(context, dividedBy: 5),
            child: Image.asset(
              "assets/images/login_undraw_city_life_gnpr 1.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: ("Let's "),
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 25,
                        // fontWeight: FontWeight.bold,
                        color: kcPrimaryBlueColor),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Sign In',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("quis nostrud exercitation ullamco laboris nisi ut"),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontFamily: "Lato"),
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: kcPrimaryBlueColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: kcVeryLightGrey),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontFamily: "Lato"),
                      prefixIcon: Icon(Icons.lock_outline),
                      // suffixIcon: Icon(Icons.visibility_off),
                      prefixIconColor: kcPrimaryBlueColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: kcVeryLightGrey),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(color: kcPrimaryBlueColor),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Show Password ?",
                        style: TextStyle(color: kcPrimaryBlueColor),
                      ),
                    ),
                  ],
                ),
                // Spacer(),
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: screenHeightFraction(context, dividedBy: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // thickness: 1,
                        color: kcMediumGrey,
                        // indent: 20,
                        // endIndent: 20,
                        height: 1,
                        width: screenWidthFraction(context, dividedBy: 2.7),
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
                        width: screenWidthFraction(context, dividedBy: 2.7),
                      ),
                    ],
                  ),
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
                          child: SvgPicture.asset(
                              "assets/images/facebookicon.svg"),
                        )),
                    Container(
                        height: 60,
                        width: screenWidthFraction(context, dividedBy: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kcVeryLightGrey),
                        child: Center(
                          child:
                              SvgPicture.asset("assets/images/googleicon.svg"),
                        ))
                  ],
                ),
                // Spacer(),
                SizedBox(
                  height: 60,
                ),
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
                            text: 'Register ?',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
