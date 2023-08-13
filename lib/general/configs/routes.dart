// Route? onGenerateRoutes(RouteSettings settings) {
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todoapp/general/widgets/navbar.dart';
import 'package:todoapp/screens/auth/views/login.dart';
import 'package:todoapp/screens/auth/views/otp_phone.dart';
import 'package:todoapp/screens/home/views/add_tasks.dart';
import 'package:todoapp/screens/home/views/edit_task.dart';
import 'package:todoapp/screens/home/views/homepage.dart';
import 'package:todoapp/screens/home/views/profile.dart';
import 'package:todoapp/screens/onboarding/views/onborading.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Onboarding.route:
      return PageTransition(
        child: const Onboarding(),
        type: PageTransitionType.rightToLeft,
      );
    case BottomBar.routeName:
      return PageTransition(
        child: const BottomBar(),
        type: PageTransitionType.rightToLeft,
      );
    case Homepage.route:
      return PageTransition(
        child: const Homepage(),
        type: PageTransitionType.rightToLeft,
      );

    case EditTask.route:
      return PageTransition(
        child: EditTask(
          id: settings.arguments as int,
          // titl: settings.arguments as String,
          // decs: settings.arguments as String,
        ),
        type: PageTransitionType.rightToLeft,
      );
    case Profile.route:
      return PageTransition(
        child: const Profile(),
        type: PageTransitionType.rightToLeft,
      );
    case AddTask.routeName:
      return PageTransition(
        child: const AddTask(),
        type: PageTransitionType.rightToLeft,
      );
    case Login.route:
      return PageTransition(
        child: const Login(),
        type: PageTransitionType.rightToLeft,
      );
    case OtpPhoneScreen.route:
      final arguments = settings.arguments as Map;
      return PageTransition(
        child: OtpPhoneScreen(
          phone: arguments['phone'],
          smsId: arguments['smsId'],
        ),
        type: PageTransitionType.rightToLeft,
      );

    default:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
