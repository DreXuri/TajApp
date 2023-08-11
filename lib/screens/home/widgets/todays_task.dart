import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/screens/home/cobtrollers/home_controller/home_provider.dart';
import 'package:todoapp/screens/home/model/task_model.dart';
import 'package:todoapp/screens/home/views/edit_task.dart';
import 'package:todoapp/screens/home/widgets/plan_tiles.dart';

class TodayTask extends ConsumerWidget {
  const TodayTask({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Tasks> listTask = ref.watch(homeStateProvider);
    String today = ref.read(homeStateProvider.notifier).getToday();
    var todayList = listTask
        .where(
          (element) => element.isCompleted == 0 && element.date.contains(today),
        )
        .toList();
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: todayList.length,
      itemBuilder: (context, index) {
        final setTask = todayList[index];
        bool isCompleted =
            ref.read(homeStateProvider.notifier).getStatus(setTask);
        dynamic color = ref.read(homeStateProvider.notifier).getRandomColor();
        return PlanTiles(
          edit: InkWell(
            onTap: () {
              // String titl = setTask.title;
              // String decs = setTask.description;
              titl = setTask.title;
              descriptio = setTask.description;
              Navigator.of(context).pushNamed(
                EditTask.route,
                arguments: setTask.id,
              );
            },
            child: const Icon(Icons.edit_note_outlined),
          ),
          remove: () =>
              ref.read(homeStateProvider.notifier).deleteItem(setTask.id),
          colo: color, description: setTask.description,
          end: setTask.updatedAt.substring(10, 16),
          start: setTask.createdAt.substring(10, 16),
          title: setTask.title,
          switcher: Switch(
              value: isCompleted,
              onChanged: (value) {
                ref.read(homeStateProvider.notifier).markAsUpdateItem(
                    setTask.id,
                    setTask.title,
                    setTask.description,
                    1,
                    setTask.date,
                    setTask.createdAt,
                    setTask.updatedAt);
              }),
          // data: todayList[index],
        );
      },
    );
  }
}
