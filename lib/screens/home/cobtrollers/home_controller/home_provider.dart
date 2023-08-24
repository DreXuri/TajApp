import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todoapp/general/helpers/db_helper.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/screens/home/model/task_model.dart';

part 'home_provider.g.dart';


@riverpod
class HomeState extends _$HomeState {
  @override
  List<Tasks> build() {
    return [];
  }

  void refresh() async {
    final data = await DBHeler.getItems();
    state = data.map((e) => Tasks.fromJson(e)).toList();
  }

  void addItem(Tasks task) async {
    await DBHeler.createItem(task);
    refresh();
  }

  void updateItem(int id, String title, String description, int isCompleted,
      String date, String createdAt, String updatedAt) async {
    await DBHeler.updateItem(
        id, title, description, isCompleted, date, createdAt, updatedAt);
    refresh();
  }

  void deleteItem(int id) async {
    await DBHeler.delete(id);
    refresh();
  }

  void markAsUpdateItem(int id, String title, String description,
      int isCompleted, String date, String createdAt, String updatedAt) async {
    await DBHeler.updateItem(
        id, title, description, 1, date, createdAt, updatedAt);
    refresh();
  }

  String getToday() {
    DateTime today = DateTime.now();
    return today.toString().substring(0, 10);
  }

  String getTomao() {
    DateTime tomao = DateTime.now().add(const Duration(days: 1));
    return tomao.toString().substring(0, 10);
  }

  List<String> get30Days() {
    DateTime today = DateTime.now();
    DateTime oneMonthAgo = today.subtract(const Duration(days: 30));
    List<String> dates = [];

    for (var i = 0; i < 30; i++) {
      DateTime date = oneMonthAgo.add(Duration(days: i));
      dates.add(date.toString().substring(0, 10));
    }
    return dates;
  }

  bool getStatus(Tasks data) {
    bool? isCompleted;
    if (data.isCompleted == 0) {
      isCompleted = false;
    } else {
      isCompleted = true;
    }
    return isCompleted;
  }

  //change colorstate
  dynamic getRandomColor() {
    Random random = Random();
    int randomIndex = random.nextInt(colors.length);

    return colors[randomIndex];
  }
}
