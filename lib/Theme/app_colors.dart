import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color brandPrimary = Color.fromARGB(255, 0, 45, 105); // #1E5DAE
  static const Color brandSecondary = Color(0xFF00ACEE); // #00ACEE

  // System Colors - Alerts & Notifications
  static const Color alertPrimary = Color(0xFF00ACEE); // #00ACEE
  static const Color alertError = Color(0xFFEC4F4F); // #EC4F4F
  static const Color alertSuccess = Color(0xFF4ACE9D); // #4ACE9D

  // Neutral Colors - Text Primary & Subtext
  static const Color neutralBlack = Color(0xFF000000); // #000000
  static const Color neutralDarkGray = Color(0xFF434343); // #434343
  static const Color neutralGray = Color(0xFF888888); // #888888
  static const Color neutralLightGray = Color(0xFFCCCCCC); // #CCCCCC
  static const Color neutralLighterGray = Color(0xFFD9D9D9); // #D9D9D9
  static const Color neutralLightestGray = Color(0xFFE1E1E1); // #E1E1E1
  static const Color neutralPaleGray = Color(0xFFECECEC); // #ECECEC
  static const Color neutralWhite = Color(0xFFFBFBFB); // #FBFBFB

  static const LinearGradient gradientBackground = LinearGradient(
    colors: [
      AppColors.brandPrimary,
      AppColors.alertPrimary,
    ],
    begin: Alignment.center,
    end: Alignment.bottomCenter,
  );
}
