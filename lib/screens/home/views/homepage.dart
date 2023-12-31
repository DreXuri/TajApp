import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todoapp/general/helpers/notification_heper.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/background_widget.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/expand_widget.dart';
import 'package:todoapp/general/widgets/height_space.dart';
import 'package:todoapp/general/widgets/width_space.dart';
import 'package:todoapp/screens/home/cobtrollers/expandsion%20controller/expansion_provider.dart';

import 'package:todoapp/screens/home/views/add_tasks.dart';
import 'package:todoapp/screens/home/widgets/completed_task.dart';
import 'package:todoapp/screens/home/widgets/plan_tiles.dart';
import 'package:todoapp/screens/home/widgets/todays_task.dart';
import 'package:todoapp/screens/home/widgets/tomaoList.dart';

import '../../../general/widgets/search_field.dart';

class Homepage extends ConsumerStatefulWidget {
  static const String route = '/homepage_screen';

  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  late final TabController _tabController;
  int selectedIndex = 0;
  late NotificationHelper notifierHelper;
  late NotificationHelper controller;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      this.selectedIndex = _tabController.index;
    });
    notifierHelper = NotificationHelper(ref: ref);
    Future.delayed(const Duration(seconds: 1), () {
      controller = NotificationHelper(ref: ref);
    });
  }

  List<Widget> _tabs() {
    final tabs = [
      'Pending',
      'Completed',
    ];
    return tabs.map((e) => Tab(child: Text(e))).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.kWhite,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(62.h),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.w),
              child: SearchField(
                hintText: 'Search',
                controller: _searchController,
                suffixIcon: Icon(
                  Icons.search,
                  size: 24.h,
                ),
              ),
            )),
        elevation: 0,
        toolbarHeight: 81.h,
        backgroundColor: Colors.transparent,
        toolbarOpacity: 0.8,
        title: const CustomText(
          data: 'Dashboard',
          textAlign: TextAlign.start,
          color: AppConst.kBlack,
          fontWeight: FontWeight.bold,
        ),
        leading: const Icon(
          Icons.crop_free_sharp,
          color: AppConst.kBlack,
          size: 29,
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10.w,
                  horizontal: 10.h,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Assets.profile),
                        ),
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 5,
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: Background(
        child: ListView(
          children: [
            Row(
              children: [
                Icon(Ionicons.alarm_sharp,
                    size: 20.h, color: AppConst.kPrimary),
                const WidthSpace(),
                CustomText(
                  data: '''Today's Task''',
                  textAlign: TextAlign.center,
                  color: AppConst.kBlack,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const HeightSpace(),
            Container(
              decoration: BoxDecoration(
                  color: AppConst.kBlack,
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: TabBar(
                controller: _tabController,
                labelPadding: EdgeInsets.zero,
                isScrollable: false,
                unselectedLabelColor: AppConst.kActiveColor,
                labelColor: AppConst.kWhite,
                indicatorColor: AppConst.kWhite,
                tabs: _tabs(),
              ),
            ),
            const HeightSpace(),
            SizedBox(
              height: AppConst.kHeight * 0.3,
              width: AppConst.kWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      color: AppConst.kBlack,
                      height: AppConst.kHeight * 0.3,
                      child: const TodayTask(),
                    ),
                    Container(
                        color: AppConst.kWhite,
                        height: AppConst.kHeight * 0.3,
                        child: const CompletedTask()),
                  ],
                ),
              ),
            ),
            const HeightSpace(),
            const TomaoList(),
            HeightSpace(hight: 17.h),
            ExpandWidget(
              text: DateTime.now()
                  .add(Duration(days: 2))
                  .toString()
                  .substring(5, 10),
              subText: '''Task for future''',
              // trailing: Icon(Ionicons.time_outline),
              //  trailing: Icon(Ionicons.alarm_sharp),
              trailing: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: ref.watch(expansionStateTrueProvider)
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
                ref
                    .read(expansionStateTrueProvider.notifier)
                    .setStart(expanded);
              },
              children: [
                PlanTiles(
                  start: '04: 45',
                  end: '06:33',
                  // switcher: Icon(Icons.done_all_outlined),
                  // Switch(value: true, onChanged: (value) {}),
                  switcher: Switch(value: true, onChanged: (value) {}),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AddTask.routeName);
        },
        backgroundColor: AppConst.kPrimary,
        tooltip: 'AddTask',
        elevation: 5,
        splashColor: Colors.grey,
        child: Icon(Ionicons.add_sharp, size: 30.h, color: AppConst.kWhite),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
