import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/bottom_tiles.dart';

class ExpandWidget extends StatelessWidget {
  const ExpandWidget({super.key});

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
            title: BottomTitles(),
          )),
    );
  }
}
