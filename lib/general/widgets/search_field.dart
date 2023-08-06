import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/constant.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyBoardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hasLabel;
  final bool obscureText;
  final bool multiLine;
  final bool enabled;
  final bool readOnly;
  final double? verticalContentPadding;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final bool filled;
  final TextAlign textAlign;
  final String? label;
  final Color? fillColor;
  final FocusNode? focusNode;
  final VoidCallback? onTap;

  /// A custom TextFormField to accept user input
  const SearchField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.keyBoardType,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.suffixIcon,
    this.hasLabel = true,
    this.obscureText = false,
    this.multiLine = false,
    this.enabled = true,
    this.readOnly = false,
    this.initialValue,
    this.verticalContentPadding,
    this.inputFormatters,
    this.filled = true,
    this.textAlign = TextAlign.start,
    this.label,
    this.fillColor,
    this.focusNode,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
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
        fillColor: fillColor ?? AppConst.kWhite,
        filled: filled,
        isDense: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconColor: AppConst.kLightGray,
        suffix: Padding(
          padding: EdgeInsets.only(
            top: 0.0.h,
            left: 10.w,
          ),
          child: suffix,
        ),
        prefix: Padding(
          padding: EdgeInsets.only(
            top: 0.0.h,
            left: 10.w,
          ),
          child: prefix,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppConst.kBorderColor),
          borderRadius: BorderRadius.circular(13.0.r.r),
        ),
        hintText: !enabled && initialValue != null ? null : hintText,
        hintStyle: kStylePoppins.copyWith(
          fontWeight: FontWeight.w200,
          fontSize: 14.0.sp,
          height: (20.12 / 14.0).sp,
          color: AppConst.kBlack,
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
          borderRadius: BorderRadius.circular(13..r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppConst.kPrimaryRed),
          borderRadius: BorderRadius.circular(13.r),
        ),
      ),
      onTap: onTap,
      onChanged: (String value) => onChanged?.call(value),
      onFieldSubmitted: (String value) => onFieldSubmitted?.call(value),
      validator: (String? value) => validator?.call(value),
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
            borderRadius: BorderRadius.circular(13.0.r)),
        contentPadding:
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 16.0.w),
        hintText: !enabled && initialValue != null ? null : hintText,
        hintStyle: kStylePoppins.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14.0.sp,
          height: (20.12 / 14.0).sp,
          color: AppConst.kBlack,
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
            borderRadius: BorderRadius.circular(13.0.r)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppConst.kPrimaryRed),
            borderRadius: BorderRadius.circular(13.0.r)),
      ),
      onChanged: (String value) => onChanged?.call(value),
      validator: (String? value) => validator?.call(value),
    );
  }
}
