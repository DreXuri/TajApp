import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/custome_text.dart';

PreferredSizeWidget customAppBar(
  BuildContext context, {
  String titleText = '',
  Widget? title,
  double elevation = 0,
  double? fontSize,
  double? titleSpacing,
  bool automaticallyImplyLeading = true,
  Widget? leading,
  Color? backgroundColor,
  IconThemeData? iconThemeData,
  TabBar? bottom,
  List<Widget>? action,
  bool hasLeading = true,
  VoidCallback? onBackTap,
  double preferredSize = 55.0,
  bool centerTitle = true,
  Color? titleColor,
  FontWeight? fontWeight = FontWeight.bold,
}) {
  return AppBar(
    centerTitle: centerTitle,
    leading: !hasLeading
        ? null
        : GestureDetector(
            onTap: onBackTap ??
                () {
                  Navigator.pop(
                    context,
                  );
                },
            child: leading ??
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 25.0.w,
                        top: 8.h,
                      ),
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.transparent,
                        child: RotatedBox(
                          quarterTurns: 0,
                          child: Icon(Ionicons.chevron_back_circle,
                              size: 30.h, color: AppConst.kPrimary),
                        ),
                      ),
                    ),
                  ),
                ),
          ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    backgroundColor: backgroundColor ?? AppConst.kPrimary,
    elevation: elevation,
    titleSpacing: titleSpacing,
    bottom: bottom,
    iconTheme: iconThemeData,
    actions: action,
    title: Padding(
      padding: EdgeInsets.only(top: 5.0.h),
      child: title ??
          CustomText(
            data: titleText,
            overflow: TextOverflow.fade,
            fontSize: fontSize ?? 20.0.sp,
            color: titleColor ?? AppConst.kBlack,
            fontWeight: fontWeight,
            textAlign: TextAlign.center,
          ),
    ),
  );
}
