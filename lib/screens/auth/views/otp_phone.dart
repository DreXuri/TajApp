import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/params/params.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/screens/auth/views/login.dart';
import 'package:todoapp/screens/auth/widgets/otp_box.dart';

class OtpPhoneScreen extends StatefulWidget {
  static const String route = '/otp-phone-screen';
  const OtpPhoneScreen({super.key});

  @override
  State<OtpPhoneScreen> createState() => _OtpPhoneScreenState();
}

final _otpPhoneFormKey = GlobalKey<FormState>();

class _OtpPhoneScreenState extends State<OtpPhoneScreen> {
  String verificationCode = '';
  String phoneNumber = '';

  bool isResendCode = false;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    phoneNumber = arguments['phoneNumber'];

    return Scaffold(
      backgroundColor: AppConst.kPrimary,
      appBar: customAppBar(
        context,
        titleText: 'Verify Phone',
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: AppConst.appBarGradient,
        ),
        child: Stack(
          children: [
            Image.asset(
              Assets.onboard,
              width: double.infinity,
            ),
            SingleChildScrollView(
              child: Form(
                key: _otpPhoneFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeightSpace(hight: 103.h),
                    _numberVerificationText(),
                    HeightSpace(hight: 15.h),
                    OtpBox(
                      onCodeChanged: (code) {
                        verificationCode = code;
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
                    // Consumer(
                    //   builder:
                    //       (BuildContext context, WidgetRef ref, Widget? child) {
                    //     final state = ref.watch(regControllerProvider);

                    //     ref.listen(
                    //       regControllerProvider,
                    //       (previous, next) {
                    //         next.when(
                    //             initial: () => null,
                    //             loading: () => null,
                    //             loaded: () => _onWidgetDidBuild(
                    //                 context, RegisterEmailScreen.route),
                    //             error: (message) => _showSnackBar(
                    //                 context, message,
                    //                 isError: true));
                    //       },
                    //     );

                    //     return state.when(
                    //       initial: () => _verifyButton(ref),
                    //       loading: () => const CircularProgressIndicator(),
                    //       loaded: () => _verifyButton(ref),
                    //       error: (message) => _verifyButton(ref),
                    //     );
                    //   },
                    // ),
               
                    HeightSpace(hight: 53.h),
                    SvgPicture.asset(
                      Assets.navHome,
                      width: 93.w,
                      height: 106.12.h,
                    ),
                    HeightSpace(hight: 50.h),
                    const CustomText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                      data: '''    By signing up, I agree to Scudo
  Terms of Service & Privacy Policy.''',
                      color: AppConst.kWhite,
                      textAlign: null,
                    ),
                    HeightSpace(hight: 22.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                          data: '''Already have an account? ''',
                          color: AppConst.kWhite,
                          textAlign: null,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Login.route);
                          },
                          child: const CustomText(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                            data: '''Login ''',
                            color: AppConst.kSecondaryYellow,
                            textAlign: null,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _verifyButton(WidgetRef ref) {
  //   return PrimaryButton(
  //     text: 'Verify',
  //     onPressed: () {
  //       isResendCode = false;
  //       if (_otpPhoneFormKey.currentState!.validate()) {
  //         ref.read(regControllerProvider.notifier).verifyPhone(
  //               RegistrationParams(
  //                 phone: phoneNumber,
  //                 verificationCode: verificationCode,
  //               ),
  //             );
  //         hideKeyboard(context);
  //       }
  //     },
  //   );
  // }

  // void _resendCode(WidgetRef ref) {
  //   isResendCode = true;

  //   ref.read(regControllerProvider.notifier).resendPhoneCode(
  //         RegistrationParams(
  //           phone: phoneNumber,
  //           verificationCode: '',
  //         ),
  //       );
  // }

  void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (isResendCode) return;

        Navigator.of(context).pushReplacementNamed(routeName, arguments: {
          'phoneNumber': phoneNumber,
        });
      },
    );
  }

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
          const CustomText(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.3,
            data: '''We’ve sent an SMS with an activation code to ''',
            color: AppConst.kWhite,
            textAlign: null,
          ),
          Row(
            children: [
              const CustomText(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.3,
                data: '''your phone ''',
                color: AppConst.kWhite,
                textAlign: null,
              ),
              CustomText(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.3,
                data: phoneNumber,
                color: AppConst.kSecondaryYellow,
                textAlign: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
