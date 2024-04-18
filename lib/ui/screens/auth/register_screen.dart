import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';
import 'package:real_estate/ui/common/ui_helpers.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Row(
      //     children: [
      //       horizontalSpaceSmall,

      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            Container(
              height: screenHeightFraction(context, dividedBy: 13),
              width: screenHeightFraction(context, dividedBy: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kcVeryLightGrey),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.chevron_left),
              ),
            ),
            verticalSpaceLarge,
            RichText(
              text: TextSpan(
                text: ("Create your "),
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 25,
                    // fontWeight: FontWeight.bold,
                    color: kcPrimaryBlueColor),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Account',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
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
                  hintText: "Full name",
                  hintStyle: TextStyle(fontFamily: "Lato"),
                  prefixIcon: Icon(Icons.person_outline),
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
                        return Text("Terms of service comming soon");
                      },
                    );
                  },
                  child: Text(
                    "Terms of Service",
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
            verticalSpaceSmall,
            Center(
              child: SizedBox(
                  width: screenWidthFraction(
                    context,
                    dividedBy: 1.5,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style:
                          TextStyle(color: kcWhite), // Set text color to white
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kcPrimaryColor),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(color: kcWhite)), // Set text color to white
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
