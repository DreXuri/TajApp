import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/constant.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/width_space.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.textStyle,
    this.padding,
    this.buttonStyle,
    this.enabled = true,
    this.backgroundColor,
    this.textColor,
    this.hasOuterPadding = true,
    this.borderColor,
    this.borderRadius,
  });

  final VoidCallback onPressed;
  final Widget? child;
  final String? text;
  final bool enabled;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final ButtonStyle? buttonStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final bool hasOuterPadding;
  final Color? borderColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: hasOuterPadding ? 20.0.w : 0,
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: buttonStyle ??
            ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppConst.kPrimary,
              disabledForegroundColor: AppConst.kPrimary.withOpacity(0.56),
              disabledBackgroundColor:
                  AppConst.kListItemBackgroundColor.withOpacity(0.38),
              padding: padding ??
                  EdgeInsets.symmetric(
                      vertical: child != null ? 12.h : 14.h, horizontal: 32.w),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: borderColor ?? Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(
                  borderRadius ?? 4.r,
                ),
              ),
            ),
        child: Align(
          alignment: Alignment.center,
          child: Center(
            child: child ??
                Text(
                  text ?? ' ',
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      kStylePoppins.copyWith(
                        color: textColor ?? Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        letterSpacing: 1.sp,
                      ),
                ),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.onPressed,
    this.child,
    this.text,
    this.enabled = true,
    this.textStyle,
    this.fontSize,
    this.buttonStyle,
    this.hasUnderline = true,
    this.textColor,
    this.isCenter = true,
  });

  final VoidCallback onPressed;
  final Widget? child;
  final String? text;
  final bool enabled;
  final TextStyle? textStyle;
  final double? fontSize;
  final ButtonStyle? buttonStyle;
  final bool hasUnderline;
  final Color? textColor;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    return isCenter
        ? Center(
            child: TextButton(
              onPressed: enabled ? onPressed : null,
              style:
                  buttonStyle ?? TextButton.styleFrom(padding: EdgeInsets.zero),
              child: child ??
                  Text(
                    text ?? ' ',
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        kStyleArchivo.copyWith(
                          color: textColor ?? AppConst.kActiveColor,
                          fontWeight: FontWeight.w600,
                          fontSize: fontSize ?? 16.sp,
                          decoration:
                              hasUnderline ? TextDecoration.underline : null,
                          letterSpacing: -0.02.sp,
                        ),
                  ),
            ),
          )
        : TextButton(
            onPressed: enabled ? onPressed : null,
            style:
                buttonStyle ?? TextButton.styleFrom(padding: EdgeInsets.zero),
            child: child ??
                Text(
                  text ?? ' ',
                  textAlign: TextAlign.center,
                  style: textStyle ??
                      kStyleArchivo.copyWith(
                        color: textColor ?? AppConst.kBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: fontSize ?? 16.sp,
                        decoration:
                            hasUnderline ? TextDecoration.underline : null,
                        letterSpacing: -0.02.sp,
                      ),
                ),
          );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    this.label,
    this.hasShadow = false,
    this.shadowColor,
    this.color,
    this.textColor,
    this.fontSize,
    this.onTap,
    this.borderRadius,
    this.border,
    this.fontWeight,
    this.padding,
    this.margin,
    this.alignToCenter = true,
    this.child,
  })  : assert(child != null || label != null,
            'Either of child or label is required'),
        assert(child == null || label == null,
            'You cannot supply both child and label arguments');

  final String? label;
  final bool hasShadow;
  final Color? shadowColor;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onTap;
  final double? borderRadius;
  final BoxBorder? border;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool alignToCenter;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: alignToCenter ? Alignment.center : null,
        margin: margin,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          border: border,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: color ?? AppConst.kPrimary.withOpacity(0.8),
                    spreadRadius: 2,
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                  )
                ]
              : null,
          color: color ?? AppConst.kWhite,
        ),
        child: child ??
            CustomText(
              data: label ?? '',
              textAlign: TextAlign.center,
              color: textColor,
              fontSize: fontSize ?? 11.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
            ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key,
    this.color,
    this.textColor,
    required this.text,
    required this.icon,
    this.verticalPadding,
    this.horizontalPadding,
    this.borderRadius,
    required this.onTap,
    this.spacing,
    this.elevation,
    this.fontSize,
    this.borderColor,
  });

  final Color? color;
  final Color? textColor;
  final String text;
  final Widget icon;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? borderRadius;
  final VoidCallback onTap;
  final double? spacing;
  final double? elevation;
  final double? fontSize;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    // return OnTapFade(
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: elevation ?? 3,
        color: color ?? AppConst.kWhite,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: borderColor ?? Colors.transparent, width: 0.5),
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 16.h,
              horizontal: horizontalPadding ?? 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                data: text,
                fontSize: fontSize ?? 14.sp,
                color: textColor ?? AppConst.kTextBlack,
                textAlign: TextAlign.center,
              ),
              WidthSpace(spacing ?? 6.w),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
