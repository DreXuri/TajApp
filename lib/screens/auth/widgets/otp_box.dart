import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/constant.dart';
import 'package:todoapp/general/widgets/height_space.dart';

class OtpBox extends StatefulWidget {
  final Function(String code) onCodeChanged;

  const OtpBox({super.key, required this.onCodeChanged});

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

class _OtpBoxState extends State<OtpBox> {
  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final focusNode3 = FocusNode();
  final focusNode4 = FocusNode();
  final focusNode5 = FocusNode();
  final focusNode6 = FocusNode();

  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();
  final _controller6 = TextEditingController();

  String number1 = '';
  String number2 = '';
  String number3 = '';
  String number4 = '';
  String number5 = '';
  String number6 = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (value) {
        if (value.logicalKey.keyId == 0x100000008) {
          FocusScope.of(context).previousFocus();
        }
      },
      child: Form(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode1,
                    controller: _controller1,
                    onChanged: (value) {
                      number1 = value;
                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {
                      // print(pin1);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
              HeightSpace(
                hight: 14.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode2,
                    controller: _controller2,
                    onChanged: (value) {
                      number2 = value;
                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {
                      // print(pin1);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
              HeightSpace(
                hight: 14.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode3,
                    controller: _controller3,
                    onChanged: (value) {
                      number3 = value;
                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin3) {
                      // print(pin3);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
              HeightSpace(
                hight: 32.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode4,
                    controller: _controller4,
                    onChanged: (value) {
                      number4 = value;
                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin4) {
                      // print(pin4);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
              HeightSpace(
                hight: 14.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode5,
                    controller: _controller5,
                    onChanged: (value) {
                      number5 = value;
                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin5) {
                      // print(pin5);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      labelStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
              HeightSpace(
                hight: 14.w,
              ),
              Expanded(
                child: SizedBox(
                  height: 42,
                  child: TextFormField(
                    focusNode: focusNode6,
                    controller: _controller6,
                    onChanged: (value) {
                      number6 = value;

                      _combileNumber();
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin6) {
                      // print(pin6);
                    },
                    decoration: InputDecoration(
                      fillColor: AppConst.kWhite,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: AppConst.kBorderColor),
                      ),
                      contentPadding: const EdgeInsets.all(5),
                      hintStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        // height: (20.12 / 14.0).sp,
                        color: AppConst.kBlack,
                      ),
                      errorStyle: kStylePoppins.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 10.0.sp,
                        // height: 1,
                        color: AppConst.kPrimaryRed,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kBorderColor),
                          borderRadius: BorderRadius.circular(8.0)),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppConst.kPrimaryRed),
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    style: kStylePoppins.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppConst.kBlack,
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _combileNumber() {
    widget.onCodeChanged(
        number1 + number2 + number3 + number4 + number5 + number6);
  }
}
