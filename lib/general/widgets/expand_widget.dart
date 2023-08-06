import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/bottom_tiles.dart';

class ExpandWidget extends StatelessWidget {
  const ExpandWidget({
    super.key,
    required this.text,
    required this.subText,
    this.trailing,
    required this.children,
  });
  final String text;
  final String subText;
  final Widget? trailing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kBlack,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
       ),
      child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: BottomTitles(
              color: AppConst.kErrorColor,
              subText: subText,
              text: text,
            ),
            trailing: trailing,
            children: children,
          )),
    );
  }
}
