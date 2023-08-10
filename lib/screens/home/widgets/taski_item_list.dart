import 'package:flutter/material.dart';
import 'package:todoapp/screens/home/model/task_model.dart';

class TaskItemList extends StatefulWidget {
  const TaskItemList({super.key, required this.data});
  final Tasks data;
  @override
  State<TaskItemList> createState() => _TaskItemListState();
}

class _TaskItemListState extends State<TaskItemList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
