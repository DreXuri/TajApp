import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/params/params.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/background_widget.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custom_loading_indicator.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/navbar.dart';
import 'package:todoapp/screens/auth/controllers/auth%20controller/auth_controller.dart';
import 'package:todoapp/screens/auth/views/login.dart';
import 'package:todoapp/screens/auth/widgets/otp_box.dart';

class OtpPhoneScreen extends ConsumerWidget {
  static const String route = '/otp-phone-screen';
  const OtpPhoneScreen({super.key, required this.phone, required this.smsId});
  final String phone;
  final String smsId;
  // String verificationCode = '';

  // String phoneNumber = '';

  void verifyOtp(BuildContext context, WidgetRef ref, String verificationCode) {
    ref.read(authControllerProvider.notifier).verifyOtCodep(
        context: context,
        smsId: smsId,
        smsCode: verificationCode,
        isMounted: true);
  }

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    // phoneNumber = arguments['phone'];
    // smsId = arguments['smsId'];
    final _otpPhoneFormKey = GlobalKey<FormState>();
    String verificationCode = '';
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: _otpPhoneFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeightSpace(hight: 18.h),
                _numberVerificationText(),
                HeightSpace(hight: 105.h),
                OtpBox(
                  onCodeChanged: (code) {
                    verificationCode = code;
                    // return verifyOtp(context, ref, code);
                  },
                ),
                HeightSpace(hight: 24.h),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Consumer(builder: (_, WidgetRef ref, Widget? child) {
                //       return InkWell(
                //         onTap: () => _resendCode(ref),
                //         child: RichTextWidget(
                //           data: 'Didn’t recieve code? ',
                //           titleFontSize: 12,
                //           titleTextColor: AppConst.kWhite,
                //           subTitle: 'Resend',
                //           titleFontWeight: FontWeight.normal,
                //           subTitleFontSize: 12,
                //           subTitleTextColor: AppConst.kSecondaryYellow,
                //         ),
                //       );
                //     }),
                //   ],
                // ),
                HeightSpace(hight: 24.h),
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    // final state = ref.watch(authControllerProvider);

                    return _verifyButton(context, ref, verificationCode);
                  },
                ),
                HeightSpace(hight: 24.h),
                // Consumer(builder:
                //     (BuildContext context, WidgetRef ref, Widget? child) {
                //   return _verifyButton(context, ref, );
                // }),
                // _verifyButton(
                //   context,
                //   ref,
                // ),
                // PrimaryButton(
                //     text: 'Verify',
                //     onPressed: () {
                //       verifyOt;
                //       hideKeyboard(context);
                //     }),

                // PrimaryButton(
                //     text: 'Verify',
                //     onPressed: () {
                //       // isResendCode = false;
                //       //   if (_otpPhoneFormKey.currentState!.validate()) {
                //       //     ref.read(authControllerProvider.notifier).verifyOtCodep(
                //       //         context: context,
                //       //         smsId: smsId,
                //       //         // smsId: phoneNumber,
                //       //         smsCode: verificationCode,
                //       //         isMounted: true);
                //       //     hideKeyboard(context);
                //       //   }
                //       // },
                //       // print(verificationCode);
                //     }),
                HeightSpace(hight: 53.h),

                const CustomText(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                  data:
                      'By signing up, I agree to Terms of Service & Privacy Policy.',
                  color: AppConst.kTextBlack,
                  textAlign: TextAlign.center,
                ),
                // HeightSpace(hight: 22.h),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const CustomText(
                //       fontSize: 16,
                //       fontWeight: FontWeight.w400,
                //       height: 1.3,
                //       data: '''Already have an account? ''',
                //       color: AppConst.kWhite,
                //       textAlign: null,
                //     ),
                //     TextButton(
                //       onPressed: () {
                //         Navigator.pushReplacementNamed(
                //             context, Login.route);
                //       },
                //       child: const CustomText(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         height: 1.3,
                //         data: '''Login ''',
                //         color: AppConst.kSecondaryYellow,
                //         textAlign: null,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _verifyButton(
    BuildContext context,
    WidgetRef ref,
    String verificationCode,
  ) {
    return PrimaryButton(
      text: 'Verify',
      onPressed: () {
        ref.read(authControllerProvider.notifier).verifyOtCodep(
            context: context,
            smsId: smsId,
            // smsId: phoneNumber,
            smsCode: verificationCode,
            isMounted: true);
        hideKeyboard(context);
      },
    );
  }

  // void _resendCode(WidgetRef ref) {
  void _showSnackBar(BuildContext context, String content,
      {bool isError = false}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        showCustomSnackBar(context, content, isError: isError);
      },
    );
  }

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  Widget _numberVerificationText() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            height: 1.3,
            data: '''We’ve sent an SMS with an activation code to''',
            color: AppConst.kTextBlack,
            textAlign: null,
          ),
          Row(
            children: [
              CustomText(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.3,
                data: '''your phone ''',
                color: AppConst.kTextBlack,
                textAlign: null,
              ),
              CustomText(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.3,
                data: phone,
                color: AppConst.kPrimary,
                textAlign: null,
              ),
            ],
          ),
        ],
      ),
    );
  }

//   void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) {
//         if (isResendCode) return;

//         Navigator.of(context).pushReplacementNamed(routeName, arguments: {
//           'phoneNumber': phoneNumber,
//         });
//       },
//     );
//   }
// }
}
