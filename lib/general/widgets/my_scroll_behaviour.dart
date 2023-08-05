import 'package:flutter/material.dart';

class MyScrollBehavior extends ScrollBehavior {
  ///Class to remove scroll glow from a list.
  const MyScrollBehavior();

  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
