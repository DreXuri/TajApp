import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/constant.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
 
  const PhoneNumberField({Key? key, required this.controller,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      keyboardType: TextInputType.number,

      onCountryChanged: (value) {
        InputValidator.kCountryCode = '+${value.dialCode}';
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConst.kWhite,
        hintText: 'Phone Number',
        hintStyle: kStylePoppins.copyWith(
          fontSize: 16.0.sp,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppConst.kBorderColor,
          ),
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppConst.kPrimaryRed,
          ),
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppConst.kBorderColor,
          ),
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            4,
          ),
          borderSide: const BorderSide(
            color: AppConst.kBorderColor,
          ),
        ),
      ),
      dropdownIconPosition: IconPosition.trailing,
      initialCountryCode: 'NG',
      flagsButtonMargin: const EdgeInsets.only(left: 18),
      onChanged: (phone) {},
    );
  }
}
