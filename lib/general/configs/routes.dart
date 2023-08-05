// Route? onGenerateRoutes(RouteSettings settings) {
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todoapp/screens/auth/views/login.dart';
import 'package:todoapp/screens/auth/views/register.dart';
import 'package:todoapp/screens/home/views/homepage.dart';
import 'package:todoapp/screens/onboarding/views/onborading.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Onboarding.route:
      return PageTransition(
        child: const Onboarding(),
        type: PageTransitionType.rightToLeft,
      );
    case Homepage.route:
      return PageTransition(
        child: const Homepage(),
        type: PageTransitionType.rightToLeft,
      );
    case Login.route:
      return PageTransition(
        child: const Login(),
        type: PageTransitionType.rightToLeft,
      );
    case RegisterScreen.route:
      return PageTransition(
        child: const RegisterScreen(),
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
