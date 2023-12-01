import 'package:flutter/material.dart';

const Color kcPrimaryColor = Color(0xFF8BC83F);
const Color kcPrimaryColorDark = Color(0xFF300151);
const Color kcDarkGreyColor = Color(0xFF1A1B1E);
const Color kcMediumGrey = Color(0xFF474A54);
const Color kcLightGrey = Color.fromARGB(255, 187, 187, 187);
const Color kcVeryLightGrey = Color(0xFFE3E3E3);
const Color kcWhite = Color(0xFFFFFFFF);
const Color kcSplashBackground = Color(0xFF234F68);
const Color kcBackgroundColor = kcDarkGreyColor;

const int primaryValue = 0xFF8BC83F; // Your desired color value
const MaterialColor kcPrimaryColorMaterial = MaterialColor(
  primaryValue,
  <int, Color>{
    50: Color(0xFFF0F8E7), // Lightest shade
    100: Color(0xFFDAEEC3),
    200: Color(0xFFC3E49B),
    300: Color(0xFFABDA74),
    400: Color(0xFF99D157),
    500: Color(
        primaryValue), // The default color (500 is commonly the primary color)
    600: Color(0xFF80BA33),
    700: Color(0xFF73A72E),
    800: Color(0xFF669428),
    900: Color(0xFF507D1D), // Darkest shade
  },
);
