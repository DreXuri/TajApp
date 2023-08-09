import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../general/widgets/background_widget.dart';

class AddTask extends ConsumerStatefulWidget {
  static const String route = '/addTask_screen';

  const AddTask({super.key});

  @override
  ConsumerState<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends ConsumerState<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(child: ListView(children: [])),
    );
  }
}
