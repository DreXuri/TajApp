import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConst.kWidth,
    child: Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        ],
      ),
    ),
    );
  }
}
