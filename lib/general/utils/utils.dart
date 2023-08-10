import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';

class CurrencyType {
  static const nairaSign = "₦";
}

Widget vSpace([double height = 8.0]) {
  return SizedBox(height: height.h);
}

Widget hSpace([double width = 8.0]) {
  return SizedBox(width: width.w);
}

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).unfocus();
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

extension StringExtensio on String {
  String capitalizeTwo() {
    return "${this[0].toUpperCase()}${this.substring(1).toUpperCase()}";
  }
}

void showCustomSnackBarAfterFrame(BuildContext context, String content,
    {bool isError = false}) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) {
      showCustomSnackBar(context, content, isError: isError);
    },
  );
}
