import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpace extends StatelessWidget {
  final double? width;
  const WidthSpace( {
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: width ?? 10.h,
    );
  }
}
