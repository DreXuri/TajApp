import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/screens/auth/views/login.dart';

class PageTwo extends StatelessWidget {
  static const String route = '/onboard_one_screen';

  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: AppConst.kHeight,
        width: AppConst.kWidth,
        // color: AppConst.kPrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Image.asset(
                Assets.onboard,
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 63.h),
            //   child: Column(
            //     children: [
            //       Padding(
            //           padding: EdgeInsets.only(top: 63.h),
            //           child: CustomText(
            //             data: 'Orgnaise Your Time',
            //             textAlign: TextAlign.center,
            //             color: AppConst.kWhite,
            //             fontSize: 24.sp,
            //             height: 1.3.h,
            //             fontWeight: FontWeight.w700,
            //           )),
            //       Padding(
            //         padding:
            //             EdgeInsets.only(top: 24.h, right: 26.w, left: 26.w),
            //         child: Center(
            //           child: CustomText(
            //             data:
            //                 'Manage ypur time, reduce the  stress and make life easy and get a better magement of your time.',
            //             fontSize: 14.sp,
            //             letterSpacing: 2.2.h,
            //             height: 1.2.h,
            //             fontWeight: FontWeight.w500,
            //             color: AppConst.kWhite,
            //             textAlign: TextAlign.center,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.only(top: 163.h),
              child: PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                hasOuterPadding: true,
                text: 'Login with ypur email',
                borderColor: AppConst.kWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
