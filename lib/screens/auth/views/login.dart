// import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/params/params.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/inputs.dart';
import 'package:todoapp/general/widgets/navbar.dart';
import 'package:todoapp/screens/auth/controllers/registration/registration_controller.dart';
import 'package:todoapp/screens/auth/views/otp_phone.dart';
import 'package:todoapp/screens/auth/widgets/phone_number_field.dart';
import 'package:todoapp/screens/home/views/homepage.dart';

import '../../../general/widgets/custom_loading_indicator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const route = '/login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool _passwordShow = false;
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

sendcODE(){
  if (phone.text.isEmpty) {
    
  }
}












  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Image.asset(
              Assets.bgImage,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: Image.asset(
                      Assets.onboard,
                      width: 93.w,
                      height: 106.12.h,
                    ),
                  ),
                  Form(
                    key: _loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HeightSpace(hight: 103.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: PhoneNumberField(
                            controller: _textController,
                          ),
                        ),
                        HeightSpace(hight: 22.h),
                        PrimaryButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, BottomBar.routeName);
                          },
                          text: 'Get code',
                        ),
                        const HeightSpace(),
                        // Consumer(
                        //   builder: (_, WidgetRef ref, Widget? child) {
                        //     final state = ref.watch(regControllerProvider);

                        //     ref.listen(
                        //       regControllerProvider,
                        //       (previous, next) {
                        //         next.when(
                        //           initial: () => null,
                        //           loading: () => null,
                        //           loaded: () => _onWidgetDidBuild(
                        //               context, OtpPhoneScreen.route),
                        //           error: (message) => _showSnackBar(
                        //               context, message,
                        //               isError: true),
                        //         );
                        //       },
                        //     );

                        //     return state.when(
                        //       initial: () => _continueButton(ref),
                        //       loading: () => const CustomLoadingIndicator(),
                        //       loaded: () => _continueButton(ref),
                        //       error: (value) => _continueButton(ref),
                        //     );
                        //   },
                        // ),
                      
                      
                      
                        HeightSpace(hight: 149.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _continueButton(
    WidgetRef ref,
  ) {
    return PrimaryButton(
      onPressed: () {
        if (_loginFormKey.currentState!.validate()) {
          ref.read(regControllerProvider.notifier).registerPhone(
                RegistrationParams(
                  email: '',
                  phone:
                      '${InputValidator.kCountryCode}${_textController.text}',
                  verificationCode: '',
                  firstName: '',
                  lastName: '',
                  password: '',
                ),
              );

          hideKeyboard(context);
        }
      },
      text: 'GetCode',
      backgroundColor: AppConst.kSecondaryYellow,
      borderColor: AppConst.kWhite,
      // child: const CustomText(
      //   fontSize: 16,
      //   fontWeight: FontWeight.w400,
      //   height: 1.3,
      //   data: 'Get Code',
      //   color: AppConst.kWhite,
      //   textAlign: null,
      // ),
    );
  }

  void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(buildContext).pushReplacementNamed(
        routeName,
        arguments: {
          'phoneNumber':
              '${InputValidator.kCountryCode}${_textController.text}',
        },
      );
    });
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
}

void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.of(buildContext).pushReplacementNamed(routeName);
  });
}
