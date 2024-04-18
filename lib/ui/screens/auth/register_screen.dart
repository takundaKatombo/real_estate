import 'package:flutter/material.dart';
import 'package:real_estate/ui/common/app_colors.dart';

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
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: Column(
        children: [
          Column(
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
            ],
          )
        ],
      ),
    );
  }
}
