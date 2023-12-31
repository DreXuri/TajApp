// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/screens/auth/controllers/auth%20controller/auth_controller.dart';
import 'package:todoapp/screens/auth/widgets/phone_number_field.dart';

class Login extends ConsumerStatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const route = '/login';
  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  sendcODE() {
    if (_textController.text.isEmpty) {
      return;
    } else if (_textController.text.length < 8) {
      return;
    } else {
      ref.read(authControllerProvider.notifier).sendyOtp(
            context: context,
            phone: '${InputValidator.kCountryCode}${_textController.text}',
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kWhite,
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
                            sendcODE();
                          },
                          text: 'Get code',
                        ),
                        const HeightSpace(),
                        // Consumer(builder: (_, WidgetRef ref, Widget? child) {
                        //          final state = ref.watch(authControllerProvider);

                        //   return
                        //    _continueButton(ref);
                        // }),

                        // Consumer(
                        //   builder: (_, WidgetRef ref, Widget? child) {
                        //     final state = ref.watch(authControllerProvider);

                        //     ref.listen(
                        //       authControllerProvider,
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
                        //       loading: () => CustomLoadingIndicator(),
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
        if (_loginFormKey.currentState!.validate() &&
            _textController.text.isNotEmpty) {
          ref.read(authControllerProvider.notifier).sendyOtp(
                context: context,
                phone: '{${InputValidator.kCountryCode}${_textController.text}',
              );

          hideKeyboard(context);
        }
      },
      text: 'GetCode',
      backgroundColor: AppConst.kSecondaryYellow,
      borderColor: AppConst.kWhite,
    );
  }

  void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(buildContext).pushReplacementNamed(
        routeName,
        arguments: {
          'phone': '${InputValidator.kCountryCode}${_textController.text}',
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
