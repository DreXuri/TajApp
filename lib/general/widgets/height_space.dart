import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSpace extends StatelessWidget {
  final double hight;
  const HeightSpace({
    super.key,
    this.hight = 8,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: hight.h);
  }
}
