import 'package:flutter/material.dart';
import '../utils/color_constant.dart';

showCustomSnackBar(
  BuildContext context,
  String content, {
  bool isError = false,
  Duration duration = const Duration(milliseconds: 3000),
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: isError ? AppConst.kErrorColor : AppConst.kPrimary,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(16),
    ),
  );
}
