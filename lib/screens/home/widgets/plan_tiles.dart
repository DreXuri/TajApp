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
      this.title,
      this.start,
      this.end,
      this.edit,
      this.remove,
      this.switcher});
  final Color? colo;
  final String? title;
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
                // color: AppConst.kLightGray,
                color: AppConst.kWhite,
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
                        color: colo ?? AppConst.kPrimary),
                  ),
                  const WidthSpace(),
                  SizedBox(
                    width: AppConst.kWidth * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: CustomText(
                            data: title ?? 'Title of Plan',
                            textAlign: TextAlign.start,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            // color: AppConst.kWhite,
                          ),
                        ),
                        HeightSpace(
                          hight: 4.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: CustomText(
                            data: description ?? 'Description of plan',
                            textAlign: TextAlign.start,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const HeightSpace(),
                        Row(
                          children: [
                            Container(
                              width: AppConst.kWidth * 0.3,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  color: AppConst.kBlack,
                                  border: Border.all(
                                      width: 0.5.w, color: AppConst.kPrimary),
                                  borderRadius: BorderRadius.circular(10.r)),
                              // color: AppConst.kWhite,
                              child: Center(
                                child: CustomText(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  data: '$start ~  $end',
                                  color: AppConst.kWhite,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            HeightSpace(hight: 15.h),
                            Row(
                              children: [
                                const WidthSpace(),
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
                      height: 25.h,
                      // width: 50.w,
                      padding: EdgeInsets.only(bottom: 3.w),
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
