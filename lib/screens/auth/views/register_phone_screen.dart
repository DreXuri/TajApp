import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/params/params.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custom_loading_indicator.dart';
import 'package:todoapp/general/widgets/custom_snackbar.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/screens/auth/widgets/phone_number_field.dart';

import '../../../general/widgets/custome_text.dart';

class RegisterPhoneScreen extends StatefulWidget {
  static const String route = '/register-phone-screen';

  const RegisterPhoneScreen({super.key});

  @override
  State<RegisterPhoneScreen> createState() => _RegisterPhoneScreenState();
}

class _RegisterPhoneScreenState extends State<RegisterPhoneScreen> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        titleText: 'Register Phone',
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: AppConst.appBarGradient,
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: _formKey,
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
                    HeightSpace(hight: 32.h),
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
                    //       loading: () =>const CustomLoadingIndicator(),
                    //       loaded: () => _continueButton(ref),
                    //       error: (value) => _continueButton(ref),
                    //     );
                    //   },
                    // ),
               
                    HeightSpace(hight: 149.h),
                    Image.asset(
                      Assets.onboard,
                      width: 93.w,
                      height: 106.12.h,
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

  // Widget _continueButton(
  //   WidgetRef ref,
  // ) {
  //   return PrimaryButton(
  //     onPressed: () {
  //       if (_formKey.currentState!.validate()) {
  //         ref.read(regControllerProvider.notifier).registerPhone(
  //               RegistrationParams(
  //                 phone:
  //                     '${InputValidator.kCountryCode}${_textController.text}',
  //                 verificationCode: '',
  //               ),
  //             );

  //         hideKeyboard(context);
  //       }
  //     },
  //     child: const CustomText(
  //       fontSize: 16,
  //       fontWeight: FontWeight.w400,
  //       height: 1.3,
  //       data: 'Continue',
  //       color: AppConst.kWhite,
  //       textAlign: null,
  //     ),
  //   );
  // }

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
