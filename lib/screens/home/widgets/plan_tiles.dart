import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';

class PlanTiles extends StatelessWidget {
  const PlanTiles({super.key, this.colo});
  final Color? colo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            width: AppConst.kWidth,
            decoration: BoxDecoration(
              color: AppConst.kGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child: Row(
              children: [
                Container(
                  height: 75.h,
                  width: 5.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                      // TODO  change this later
                      // child: widget.color,
                      color: colo ?? AppConst.kPrimary),
                ),
                const HeightSpace(),
                SizedBox(
                  width: AppConst.kWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        data: 'Title of plan',
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
