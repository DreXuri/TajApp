import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConst {
  AppConst._();

  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xFF0A5B51),
      Color(0xFF139282),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.5, 1.0],
  );

  static const Color kPrimary = Color(0xEF0B9C07);
  static const Color kSecondaryYellow = Color(0xFFFFA531);
  static const Color kTextGray = Color(0xFF667080);
  static const Color kTextBlack = Color(0xFF2B2B2B);
  static const Color kIcon = Color(0xFF00353D);

  static const Color kPrimaryBlue = Color(0x7E22A1E6);
  static const Color kPrimaryGreen = Color(0xFF89C348);
  static const Color kDisabledGray = Color(0xFF374B58);
  static const Color kBorderColor = Color(0xFF074039);
  // static const Color kBorderColor = Color(0xFF0E0D0D);
  static const Color kLightGray = Color(0xFFCCCCCC);
  static const Color kInputFillColor = Color(0xFFFFFFFF);
  static const Color kButtonColor = Color(0xFF074039);
  static const Color kWhite = Color(0xFFFFFFFF);
  static const Color kListItemBackgroundColor = Color(0xFFEEF8EE);
  static const Color kBlack = Color(0xFF0E0D0D);
  static const Color kInactiveIcon = Color(0xFF8E8E93);
  static const Color kInactiveColor = kPrimary;
  static const Color kActiveColor = Color(0xFF8E8E93);
  static const Color kScrollGrey = Color(0xFF898A8D);
  static const Color kBackground = Color(0xFFEBECEE);
  static const Color kPrimaryRed = Color(0xFFF91414);
  static const Color kDivider = Color(0xFFE7E7E7);
  static const Color kFillColor = Color(0xFFF3F2F5);
  static const Color kGreyColor = Color(0xFFE7E7E7);
  static const Color kBarColor = Color(0xFF6A6D7C);
  static const Color kIconBackhround = Color(0xFFCAE1DE);

  static const Color kOrange = Color(0xFFFBB040);
  static const Color kGreen = Color(0xFF2BC753);

  static const Color kErrorColor = Color(0xFFF91414);
  static const Color kReceiverBackgroundColor = Color(0xFFE6FAF3);

  static double kHeight = 825.h;
  static double kWidth = 366.w;
}
