import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/screens/auth/controllers/login/code_provider.dart';

class TestPage extends ConsumerStatefulWidget {
  const TestPage({super.key});

  @override
  ConsumerState<TestPage> createState() => _TestPageState();
}

class _TestPageState extends ConsumerState<TestPage> {
  @override
  Widget build(BuildContext context) {
    String code = ref.watch(codeStateProvider);
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        CustomText(
          data: code,
          textAlign: TextAlign.center,
          fontSize: 20.sp,
        ),
        PrimaryButton(
          onPressed: () {
            ref.read(codeStateProvider.notifier).setStart('Welcome Damilare');
          },
          text: 'Click',
        )
      ],
    )));
  }
}
