
import 'package:flutter/material.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/constant.dart';


class CustomText extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? height;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  final bool hasShadow;
  final TextDirection? textDirection;
  final double? wordSpacing;
  final Color? shadowColor;
  final TextBaseline? textBaseline;
  final TextStyle? textStyle;
  const CustomText({
    super.key,
    required this.data,
    required this.textAlign,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.letterSpacing,
    this.overflow,
    this.maxLines,
    this.height,
    this.textDecoration,
    this.decorationColor,
    this.hasShadow = false,
    this.textDirection,
    this.wordSpacing,
    this.shadowColor,
    this.textBaseline,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: true,
      textDirection: textDirection,
      style: textStyle ??
          kStylePoppins.copyWith(
            color: color ?? AppConst.kTextBlack,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            decoration: textDecoration,
            decorationColor: decorationColor,
            height: height,
            wordSpacing: wordSpacing,
            textBaseline: textBaseline,
            shadows: [
              if (hasShadow)
                Shadow(
                  offset: const Offset(0, 4),
                  blurRadius: 4.0,
                  color: shadowColor ?? Colors.grey.shade700,
                ),
            ],
          ),
    );
  }
}
