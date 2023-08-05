import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/configs/routes.dart';
import 'package:todoapp/general/utils/color_constant.dart';

import 'general/widgets/my_scroll_behaviour.dart';
import 'screens/onboarding/views/onborading.dart';

void main() async {
  _setupLoggin();
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        // override the previous value with the new object
        // sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TodoApp',
        theme: ThemeData(
          scaffoldBackgroundColor: AppConst.kBlack,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
              .apply(fontSizeFactor: 1.sp),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(199, 23, 211, 61)),
        ),
        builder: (context, widget) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          widget = ScrollConfiguration(
            behavior: const MyScrollBehavior(),
            child: widget!,
          );
          return widget;
        },
        themeMode: ThemeMode.dark,
        onGenerateRoute: (settings) => generateRoute(settings),
        initialRoute: Onboarding.route,
      ),
    );
  }
}

void _setupLoggin() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
