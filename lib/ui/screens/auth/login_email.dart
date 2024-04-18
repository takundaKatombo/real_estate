import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/ui/common/ui_helpers.dart';
import 'package:real_estate/ui/screens/auth/register_screen.dart';

import '../../common/app_colors.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  bool _showPassword = false;

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
                      prefixIcon: Icon(Icons.email_outlined),
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
                  obscureText: _showPassword,
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
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return ForgotPasswordBottomSheet();
                          },
                        );
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(color: kcPrimaryBlueColor),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _showPassword = !_showPassword;
                        setState(() {});
                      },
                      child: Text(
                        _showPassword ? "Show Password " : "Hide Password ",
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
                        child: SvgPicture.asset("assets/images/googleicon.svg"),
                      ),
                    ),
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
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(fontWeight: FontWeight.w800),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Register(),
                                  ),
                                );
                              }),
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

class ForgotPasswordBottomSheet extends StatefulWidget {
  @override
  _ForgotPasswordBottomSheetState createState() =>
      _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState extends State<ForgotPasswordBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(fontFamily: "Lato"),
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: kcPrimaryBlueColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: kcVeryLightGrey),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Perform your logic to send the email
                  // ...
                  Navigator.pop(context); // Close the bottom sheet
                }
              },
              child: Text('Submit'),
            ),
            verticalSpaceSmall,
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
              height: screenHeightFraction(context, dividedBy: 20),
              width: screenWidthFraction(context, dividedBy: 3.5),
              decoration: BoxDecoration(
                color: skipLightGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                  )),
            ),
            verticalSpaceLarge,
            verticalSpaceLarge,
          ],
        ),
      ),
    );
  }
}
