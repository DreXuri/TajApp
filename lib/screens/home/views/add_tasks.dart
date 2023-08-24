import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/utils/validator.dart';
import 'package:todoapp/general/widgets/app_bar.dart';
import 'package:todoapp/general/widgets/background_widget.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/inputs.dart';
import 'package:todoapp/general/widgets/message_textfield.dart';
import 'package:todoapp/general/widgets/width_space.dart';
import 'package:todoapp/screens/home/cobtrollers/date_controllers/date_provider.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;
import 'package:todoapp/screens/home/cobtrollers/home_controller/home_provider.dart';
import 'package:todoapp/screens/home/model/task_model.dart';

import '../../../general/utils/utils.dart';

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
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  // DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    String selectedDate = ref.watch(dateStateProvider);
    String selectedStartTime = ref.watch(timeStartStateProvider);
    String selectedStopTime = ref.watch(timeEndStateProvider);

    bool validate() {
      if (!_addTaskFormKey.currentState!.validate()) return false;
      if (selectedDate.isEmpty) {
        showCustomSnackBarAfterFrame(context, 'You need to pick a date',
            isError: true);
        return false;
      }
      if (selectedStartTime.isEmpty) {
        showCustomSnackBarAfterFrame(context, 'You need to pick a start time',
            isError: true);
        return false;
      }
      if (selectedStopTime.isEmpty) {
        showCustomSnackBarAfterFrame(context, 'You need to Select a stop time',
            isError: true);
        return false;
      }
      return true;
    }

    return Scaffold(
      appBar: customAppBar(
        context,
        titleText: 'Add Task',
        backgroundColor: Colors.transparent,
      ),
      body: Background(
        child: Form(
          key: _addTaskFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
            child: ListView(
              children: [
                CustomText(
                  data: 'Add Title',
                  textAlign: TextAlign.start,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                const HeightSpace(),
                InputWidget(
                  controller: _titleController,
                  hintText: 'Enter Task Tile',
                  hasLabel: false,
                  validator: (p0) => InputValidator.validateEmpty(value: p0!),
                ),
                const HeightSpace(),
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
                const HeightSpace(),
                SizedBox(
                  height: 44.h,
                  child: Row(
                    children: [
                      Expanded(
                          child: PrimaryButton(
                        hasOuterPadding: false,
                        onPressed: () {
                          picker.DatePicker.showTime12hPicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              ref
                                  .read(timeStartStateProvider.notifier)
                                  .setStartTime(date.toString());
                              ;
                              print('confirm $date');
                            },
                            currentTime: DateTime.now().toUtc(),
                          );
                        },
                        text: selectedStartTime == ''
                            ? 'Start Time'
                            : selectedStartTime.substring(10, 16),
                      )),
                      const WidthSpace(),
                      Expanded(
                          child: PrimaryButton(
                        hasOuterPadding: false,
                        onPressed: () {
                          picker.DatePicker.showTime12hPicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              ref
                                  .read(timeEndStateProvider.notifier)
                                  .setEndDate(date.toString());
                              ;
                              print('confirm $date');
                            },
                            currentTime: DateTime.now().toUtc(),
                          );
                        },
                        text: selectedStopTime == ''
                            ? 'End Time'
                            : selectedStopTime.substring(10, 16),
                      )),
                    ],
                  ),
                ),
                const HeightSpace(),
                PrimaryButton(
                  hasOuterPadding: false,
                  onPressed: () async {
                    final date = await showDatePickerDialog(
                      context: context,
                      currentDateColor: AppConst.kWhite,
                      initialDate: DateTime.now(),
                      maxDate:
                          DateTime.now().add(const Duration(days: 365 * 3)),
                      minDate: DateTime.now()
                          .subtract(const Duration(days: 365 * 3)),
                    );

                    if (date != null) {
                      ref
                          .read(dateStateProvider.notifier)
                          .setDate(date.toString());
                    }
                  },
                  text: selectedDate == ''
                      ? 'Select Date'
                      : selectedDate.substring(0, 10),
                ),
                const HeightSpace(),
                PrimaryButton(
                  hasOuterPadding: false,
                  onPressed: () {
                    if (!validate()) {
                      print('hello');
                      return;
                    } else {
                      Tasks task = Tasks(
                        title: _titleController.text,
                        description: _bioController.text,
                        isCompleted: 0,
                        date: selectedDate,
                        createdAt: selectedStartTime,
                        updatedAt: selectedStopTime,
                        remind: 0,
                        repeat: 'yes',
                      );
                      ref.read(homeStateProvider.notifier).addItem(task);
                      ref.read(timeStartStateProvider.notifier)
                          .setStartTime('');
                      ref.read(timeEndStateProvider.notifier).setEndDate('');
                      ref.read(dateStateProvider.notifier).setDate('');
                      Navigator.pop(context);
                    }
                  },
                  text: 'Submit Task',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
