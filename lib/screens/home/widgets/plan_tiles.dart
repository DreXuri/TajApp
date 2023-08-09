import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/width_space.dart';

class PlanTiles extends StatelessWidget {
  const PlanTiles(
      {super.key,
      this.colo,
      this.description,
      this.start,
      this.end,
      this.edit,
      this.remove,
      this.switcher});
  final Color? colo;
  final String? description;
  final String? start;
  final String? end;
  final Widget? edit;
  final Widget? switcher;
  final Function()? remove;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.h),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(8.h),
              width: AppConst.kWidth,
              decoration: BoxDecoration(
                color: AppConst.kLightGray,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 80.h,
                    width: 5.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                          15.r,
                        )),
                        // TODO  change this later

                        color: colo ?? AppConst.kPrimary),
                  ),
                  const WidthSpace(),
                  SizedBox(
                    width: AppConst.kWidth * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          data: 'Title of Plan',
                          textAlign: TextAlign.start,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          // color: AppConst.kWhite,
                        ),
                        HeightSpace(
                          hight: 4.h,
                        ),
                        CustomText(
                          data: description ?? 'Title of plan',
                          textAlign: TextAlign.start,
                          // color: AppConst.kWhite,
                          fontSize: 12.sp,
                        ),
                        const HeightSpace(),
                        Row(
                          children: [
                            Container(
                              width: AppConst.kWidth * 0.3,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.3,
                                  ),
                                  borderRadius: BorderRadius.circular(10.r)),
                              // color: AppConst.kWhite,
                              child: Center(
                                child: CustomText(
                                  // color: AppConst.kWhite,
                                  data: '$start ~  $end',
                                  fontSize: 12.sp,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            HeightSpace(hight: 15.h),
                            Row(
                              children: [
                                SizedBox(
                                  child: edit,
                                ),
                                const WidthSpace(),
                                GestureDetector(
                                  onTap: remove,
                                  child: const Icon(MaterialCommunityIcons
                                      .delete_alert_outline),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10.w),
                      child: switcher,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
