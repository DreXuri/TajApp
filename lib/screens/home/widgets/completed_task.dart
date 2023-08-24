import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todoapp/screens/home/cobtrollers/home_controller/home_provider.dart';
import 'package:todoapp/screens/home/model/task_model.dart';
import 'package:todoapp/screens/home/widgets/plan_tiles.dart';

import '../../../general/utils/color_constant.dart';

class CompletedTask extends ConsumerWidget {
  const CompletedTask({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Tasks> listTask = ref.watch(homeStateProvider);
    List<String> lastMonth = ref.read(homeStateProvider.notifier).get30Days();
    List<Tasks> completedList = listTask
        .where(
          (element) =>
              element.isCompleted == 1 ||
              lastMonth.contains(element.date.substring(0, 10)),
        )
        .toList();
        
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: completedList.length,
      itemBuilder: (context, index) {
        final data = completedList[index];
        dynamic color = ref.read(homeStateProvider.notifier).getRandomColor();
        return PlanTiles(
          edit: InkWell(
            onTap: () {},
            child: const Icon(Icons.edit_note_outlined),
          ),
          remove: () =>
              ref.read(homeStateProvider.notifier).deleteItem(data.id),
          colo: color, description: data.description,
          end: data.updatedAt.substring(10, 16),
          start: data.createdAt.substring(10, 16),
          title: data.title,
          switcher: const Icon(
            AntDesign.checkcircle,
            color: AppConst.kPrimary,
          ),
          // switcher: Switch(
          //     value: isCompleted,
          //     onChanged: (value) {
          //       ref.read(homeStateProvider.notifier).markAsUpdateItem(
          //           data.id,
          //           data.title,
          //           data.description,
          //           1,
          //           data.date,
          //           data.createdAt,
          //           data.updatedAt);
          //     }),
          // data: todayList[index],
        );
      },
    );
  }
}
