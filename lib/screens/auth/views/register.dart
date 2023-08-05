import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/inputs.dart';

import '../../../general/utils/color_constant.dart';

class RegisterScreen extends StatefulWidget {
  static const String route = '/register-screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPassword = false;
  final _signUpFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _policyController = TextEditingController();

  String email = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    email = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: customAppBar(
        context,
        titleText: 'Register',
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: AppConst.appBarGradient,
        ),
        child: Stack(
          children: [
            Image.asset(
              Assets.bgImage,
              width: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 15.0),
                  //   child: Image.asset(
                  //     Assets.umbrellaImage,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  const ListTile(
                    title: CustomText(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                      data: '''Complete Your Registration''',
                      color: AppConst.kWhite,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  HeightSpace(
                    hight: 4.h,
                  ),
                  Form(
                    key: _signUpFormKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          InputWidget(
                            hintText: 'First name',
                            controller: _firstNameController,
                            validator: (p0) =>
                                InputValidator.validateEmpty(value: p0!),
                          ),
                          HeightSpace(
                            hight: 4.h,
                          ),
                          InputWidget(
                            hintText: 'Last name',
                            controller: _lastNameController,
                            validator: (p0) =>
                                InputValidator.validateEmpty(value: p0!),
                          ),
                          HeightSpace(
                            hight: 4.h,
                          ),
                          InputWidget(
                            hintText:
                                'Password (min. of eight characters)', // controller: _passwordController,
                            obscureText: !_isPassword,
                            controller: _passwordController,
                            validator: (p0) =>
                                InputValidator.validateEmpty(value: p0!),

                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPassword = !_isPassword;
                                });
                              },
                            ),
                          ),
                          HeightSpace(
                            hight: 4.h,
                          ),
                          InputWidget(
                            hintText: 'Policy Number (optional)',
                            controller: _policyController,
                          ),
                          HeightSpace(
                            hight: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _signupButton(WidgetRef ref) {
  //   return PrimaryButton(
  //     text: 'Sign Up',
  //     onPressed: () {
  //       if (_signUpFormKey.currentState!.validate()) {
  //         ref.read(regControllerProvider.notifier).completeRegistration(
  //               RegistrationParams(
  //                 email: email,
  //                 phone: '',
  //                 verificationCode: '',
  //                 firstName: _firstNameController.text,
  //                 lastName: _lastNameController.text,
  //                 password: _passwordController.text.trim(),
  //               ),
  //             );
  //         hideKeyboard(context);
  //       }
  //     },
  //   );
  // }

  void _onWidgetDidBuild(BuildContext buildContext, String routeName) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(buildContext).pushReplacementNamed(
        routeName,
        arguments: {
          'success': 'register',
        },
      );
    });
  }
}
