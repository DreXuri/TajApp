import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/width_space.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles(
      {super.key,
      required this.text,
      required this.subText,
      required this.color});
  final String text;
  final String subText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Container(
                    height: 75.h,
                    width: 5.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.r)),
                        // TODO  change this later
                        // child: widget.color,
                        color: AppConst.kPrimary));
                // child: widget.color,
              },
            ),
            WidthSpace(10.w),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    data: text,
                    color: AppConst.kWhite,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.start,
                  ),
                  const HeightSpace(),
                  CustomText(
                    data: subText,
                    color: AppConst.kWhite,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
