import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/screens/home/cobtrollers/home_controller/home_provider.dart';
import 'package:todoapp/screens/home/model/task_model.dart';
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
            onTap: () {},
            child: Icon(Icons.edit),
          ),
          remove: () =>
              ref.read(homeStateProvider.notifier).deleteItem(setTask.id),
          colo: color, description: setTask.description,
          end: setTask.updatedAt.substring(10, 16),
          start: setTask.createdAt.substring(10, 16),
          title: setTask.title,
          switcher: Switch(value: isCompleted, onChanged: (value) {}),
          // data: todayList[index],
        );
      },
    );
  }
}
