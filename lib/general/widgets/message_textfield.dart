import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/widgets/constant.dart';

import '../utils/color_constant.dart';

class MessageTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyBoardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool hasLabel;
  final double? verticalContentPadding;
  final EdgeInsets padding;
  final bool filled;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final String? label;
  final Color borderColor;
  final Color? fillColor;
  final InputBorder? inputBorder;

  /// A custom TextFormField to accept user input
  const MessageTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.keyBoardType,
    this.suffixIcon,
    this.hasLabel = true,
    this.verticalContentPadding,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0),
    this.filled = true,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.label,
    this.borderColor = AppConst.kBorderColor,
    this.fillColor,
    this.inputBorder,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        maxLines: null,
        expands: true,
        cursorColor: AppConst.kTextGray,
        textAlignVertical: textAlignVertical,
        autocorrect: true,
        textAlign: textAlign,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.sentences,
        keyboardType: keyBoardType,
        controller: controller,
        obscuringCharacter: '*',
        style: kStylePoppins.copyWith(fontSize: 16.0.sp),
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          isDense: true,
          suffixIcon: suffixIcon,
          suffixIconColor: AppConst.kLightGray,
          border: inputBorder,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(8.0.r)),
          contentPadding: EdgeInsets.symmetric(
              vertical: verticalContentPadding ?? 18.0.h, horizontal: 16.0.w),
          hintText: hintText,
          hintStyle: kStylePoppins.copyWith(
            fontWeight: FontWeight.w200,
            fontSize: 14.0.sp,
            height: (20.12 / 14.0).sp,
            color: AppConst.kLightGray,
          ),
          errorStyle: kStylePoppins.copyWith(
            fontWeight: FontWeight.w300,
            fontSize: 10.0.sp,
            height: 1,
            color: AppConst.kPrimaryRed,
          ),
          labelStyle: kStylePoppins.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0.sp,
            height: (22 / 14.0).sp,
            color: AppConst.kLightGray,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kBorderColor),
              borderRadius: BorderRadius.circular(8.0.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppConst.kPrimaryRed),
              borderRadius: BorderRadius.circular(8.0)),
        ),
        onChanged: (String value) => onChanged?.call(value),
        validator: (String? value) => validator?.call(value),
      ),
    );
  }
}

class MultiLineCustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyBoardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool multiLine;
  final bool enabled;
  final bool readOnly;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final bool filled;
  final TextAlign textAlign;
  final Color? fillColor;

  /// A custom TextFormField to accept user input
  const MultiLineCustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.validator,
    this.keyBoardType,
    this.obscureText = false,
    this.multiLine = false,
    this.enabled = true,
    this.readOnly = false,
    this.initialValue,
    this.inputFormatters,
    this.filled = true,
    this.textAlign = TextAlign.start,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      readOnly: readOnly,
      enabled: enabled,
      maxLines: multiLine ? null : 1,
      expands: multiLine ? true : false,
      cursorColor: AppConst.kTextGray,
      textAlignVertical:
          multiLine ? TextAlignVertical.top : TextAlignVertical.center,
      autocorrect: true,
      textAlign: textAlign,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      controller: controller,
      obscuringCharacter: '*',
      inputFormatters: inputFormatters,
      style: kStylePoppins.copyWith(fontSize: 16.0.sp),
      decoration: InputDecoration(
        fillColor: fillColor ?? AppConst.kInputFillColor,
        filled: filled,
        isDense: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppConst.kBorderColor),
            borderRadius: BorderRadius.circular(12.0)),
        contentPadding:
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 16.0.w),
        hintText: !enabled && initialValue != null ? null : hintText,
        hintStyle: kStylePoppins.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0.sp,
          height: (20.12 / 14.0).sp,
          color: AppConst.kLightGray,
        ),
        errorStyle: kStylePoppins.copyWith(
          fontWeight: FontWeight.w300,
          fontSize: 10.0.sp,
          height: 1,
          color: AppConst.kPrimaryRed,
        ),
        labelStyle: kStylePoppins.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0.sp,
          height: (22 / 14.0).sp,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppConst.kBorderColor),
            borderRadius: BorderRadius.circular(12.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppConst.kPrimaryRed),
            borderRadius: BorderRadius.circular(12.0)),
      ),
      onChanged: (String value) => onChanged?.call(value),
      validator: (String? value) => validator?.call(value),
    );
  }
}
