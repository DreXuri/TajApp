import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/screens/auth/views/login.dart';
import 'package:todoapp/screens/onboarding/widgets/background.dart';

class PageThree extends StatelessWidget {
  static const String route = '/onboard_three_screen';

  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kWhite,
      body: Container(
        height: AppConst.kHeight,
        width: AppConst.kWidth,
        decoration: bachgroundWiget(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 40.w),
            //   child: Image.asset(
            //     Assets.onboard,
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
                text: 'PAGE Three',
                borderColor: AppConst.kWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
