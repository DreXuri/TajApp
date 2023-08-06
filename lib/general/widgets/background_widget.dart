import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/assets_constant.dart';

class Background extends StatelessWidget {
  ///A class to add background to scaffold
  const Background({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.bgImage), fit: BoxFit.cover)),
        ),
        SafeArea(
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
            child: child,
          ),
        ),
      ],
    );
  }
}
