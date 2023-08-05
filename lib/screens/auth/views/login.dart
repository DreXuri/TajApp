// import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/inputs.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const route = '/login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool _passwordShow = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kBlack,
      // appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(200.h),
      //     child: const CustomText(data: 'Login', textAlign: TextAlign.center)),
      body: SafeArea(
        // height: MediaQuery.sizeOf(context).height,
        // height: AppConst.kHeigh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                  key: _loginFormKey,
                  child: Container(
                    height: 618,
                    decoration: BoxDecoration(
                        color: AppConst.kWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.0.h,
                            left: 30,
                            right: 30,
                            bottom: 8.h,
                          ),
                          child: CustomText(
                            data: 'Email / Phone Number ',
                            textAlign: TextAlign.start,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.w,
                            height: 1.2.h,
                          ),
                        ),
                        const HeightSpace(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: InputWidget(
                            hasLabel: false,
                            hintText: 'enter your email/ phone number',
                            controller: _usernameController,
                            validator: (p0) =>
                                InputValidator.validateEmpty(value: p0!),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 30),
                          child: CustomText(
                            data: 'Password ',
                            textAlign: TextAlign.start,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.w,
                            height: 1.2.h,
                          ),
                        ),
                        const HeightSpace(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: InputWidget(
                            hasLabel: false,
                            hintText: 'Password',
                            controller: _passwordController,
                            obscureText: !_passwordShow,
                            validator: (p0) =>
                                InputValidator.validateEmpty(value: p0!),
                            suffixIcon: IconButton(
                              color: AppConst.kLightGray,
                              icon: Icon(
                                _passwordShow
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordShow = !_passwordShow;
                                });
                              },
                            ),
                          ),
                        ),
                        HeightSpace(hight: 32.h),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: TextButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const ResetPassword(),
                                //   ),
                                // );
                              },
                              child: CustomText(
                                data: 'I forgot my password? ',
                                textAlign: TextAlign.start,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppConst.kSecondaryYellow,
                                letterSpacing: 1.w,
                                height: 1.2.h,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: RichText(
                              text: TextSpan(
                                text: 'Don\'t have an account?',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '  Create account',
                                    style: const TextStyle(
                                      color: AppConst.kSecondaryYellow,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         const SignUpOpt(),
                                        //   ),
                                        // );
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _loginButton(WidgetRef ref) {
  //   return PrimaryButton(
  //     text: 'Login',
  //     onPressed: () {
  //       if (_loginFormKey.currentState!.validate()) {
  //         ref.read(loginControllerProvider.notifier).login(
  //               RegistrationParams(
  //                 email: '',
  //                 phone: '',
  //                 otp: '',
  //                 firstname: '',
  //                 lastname: '',
  //                 password: _passwordController.text.trim(),
  //                 role: '',
  //                 username: _usernameController.text.trim(),
  //               ),
  //             );

  //         hideKeyboard(context);
  //       }
  //     },
  //   );
  // }

  void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(buildContext).pushReplacementNamed(routeName);
    });
  }
}
