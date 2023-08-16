import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/screens/home/views/add_tasks.dart';
import 'package:todoapp/screens/home/views/homepage.dart';
import 'package:todoapp/screens/home/views/profile.dart';
import 'package:todoapp/screens/notifications/views/notification.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Homepage(),
    const AddTask(),
    const Notifications(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: AppConst.kActiveColor,
        unselectedItemColor: AppConst.kInactiveColor,
        backgroundColor: AppConst.kBackground,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? AppConst.kActiveColor
                        : AppConst.kBackground,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(AntDesign.home),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? AppConst.kActiveColor
                        : AppConst.kBackground,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(AntDesign.Trophy),
            ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? AppConst.kActiveColor
                        : AppConst.kBackground,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(AntDesign.profile),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
