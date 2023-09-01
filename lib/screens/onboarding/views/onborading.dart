import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/screens/onboarding/widgets/page_two.dart';
import 'package:todoapp/screens/onboarding/widgets/pageone.dart';

import '../widgets/page_three.dart';

class Onboarding extends StatefulWidget {
  static const String route = '/onboard_one_screen';

  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kBackground,
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: pageController,
            children: const [
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 30.w),
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecondaryButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeInCirc);
                      },
                      child: Row(
                        children: [
                          Icon(Ionicons.chevron_forward_circle,
                              size: 30.h, color: AppConst.kPrimary),
                          const CustomText(
                            data: 'Skip',
                            textAlign: TextAlign.start,
                            color: AppConst.kPrimary,
                          ),
                        ],
                      ),
                    ),
                    SecondaryButton(
                      onPressed: () {
                        pageController.jumpToPage(3
                            // duration: const Duration(milliseconds: 600),
                            // curve: Curves.easeInCirc,
                            );
                      },
                      child: Row(
                        children: [
                          Icon(Ionicons.chevron_forward_circle,
                              size: 30.h, color: AppConst.kPrimary),
                          const CustomText(
                            data: 'last',
                            textAlign: TextAlign.start,
                            color: AppConst.kPrimary,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            dotHeight: 6.h,
                            dotWidth: 6.h,
                            activeDotColor: AppConst.kBlack,
                            dotColor: AppConst.kBlack,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
