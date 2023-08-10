import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/inputs.dart';
import 'package:todoapp/general/widgets/message_textfield.dart';

class AddTask extends ConsumerStatefulWidget {
  static const routeName = '/add_farm';

  const AddTask({
    super.key,
  });
  @override
  ConsumerState<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends ConsumerState<AddTask> {
  // bool selected = false;
  final GlobalKey<FormState> _addTaskFormKey = GlobalKey<FormState>();
  final TextEditingController _farmNameController = TextEditingController();
  final TextEditingController _farmAddressController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _addTaskFormKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.h),
          child: ListView(
            children: [
              CustomText(
                data: 'Farm Name',
                textAlign: TextAlign.start,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              HeightSpace(),
              InputWidget(
                controller: _farmNameController,
                hintText: 'Enter Farm Name',
                hasLabel: false,
                validator: (p0) => InputValidator.validateEmpty(value: p0!),
              ),
              HeightSpace(),
              CustomText(
                data: 'Farm Address',
                textAlign: TextAlign.start,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              HeightSpace(),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: InputWidget(
                  controller: _farmAddressController,
                  hintText: 'Enter farm address',
                  hasLabel: false,
                  validator: (p0) => InputValidator.validateEmpty(value: p0!),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 140,
                child: MessageTextField(
                  hintText: 'Description',
                  controller: _bioController,
                  hasLabel: false,
                  fillColor: AppConst.kWhite,
                  keyBoardType: TextInputType.multiline,
                  textAlign: TextAlign.start,
                  validator: (p0) => InputValidator.validateEmpty(value: p0!),
                  textAlignVertical: TextAlignVertical.top,
                  padding: EdgeInsets.only(left: 0, right: 0, top: 16.0.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
