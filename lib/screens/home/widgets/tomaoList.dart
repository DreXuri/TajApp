import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/expand_widget.dart';
import 'package:todoapp/screens/home/cobtrollers/expandsion%20controller/expansion_provider.dart';
import 'package:todoapp/screens/home/model/task_model.dart';
import 'package:todoapp/screens/home/widgets/plan_tiles.dart';

import '../cobtrollers/home_controller/home_provider.dart';

class TomaoList extends ConsumerWidget {
  const TomaoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Tasks> tasks = ref.watch(homeStateProvider);
    String tomao = ref.read(homeStateProvider.notifier).getTomao();
    var tomaoList = tasks
        .where(
          (element) => element.date.contains(tomao),
        )
        .toList();
    final color = ref.read(homeStateProvider.notifier).getRandomColor();

    return ExpandWidget(
      text: '''Tomorrow's Task''',
      subText: '''Tomorrow's Task are''',
      trailing: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: ref.watch(expansionStateProvider)
            ? const Icon(
                AntDesign.closecircle,
                color: AppConst.kLightGray,
              )
            : const Icon(
                AntDesign.circledown,
                color: AppConst.kGreen,
              ),
      ),
      // trailing: const Icon(Ionicons.time_outline),
      isEpand: (bool expanded) {
        ref.read(expansionStateProvider.notifier).setStart(expanded);
      },

      children: [
        for (var task in tomaoList)
          PlanTiles(
            start: task.createdAt,
            end: task.updatedAt,
            description: task.description,
            colo: color,
            title: task.title,
            // edit: ,
            remove: () =>
                ref.read(homeStateProvider.notifier).deleteItem(task.id),

            switcher: SizedBox.shrink(),
          ),
      ],
    );
  }
}
