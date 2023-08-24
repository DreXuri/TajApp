import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/assets_constant.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/background_widget.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/screens/notifications/model/notimication_model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatefulWidget {
  static const route = '/notification';
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<dynamic> notifications = [];

  // Future<void> readJson() async {
  //   final String response =
  //       await rootBundle.loadString('assets/notifications.json');
  //   final data = await json.decode(response);

  //   setState(() {
  //     notifications = data['notifications']
  //         .map((data) => InstagramNotification.fromJson(data))
  //         .toList();
  //   });
  // }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   readJson();
  // }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         elevation: 0,
  //         backgroundColor: Colors.transparent,
  //         title: Text(
  //           "Activity",
  //           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  //         ),
  //         centerTitle: false,
  //       ),
  //       body: ListView.builder(
  //           itemCount: notifications.length,
  //           itemBuilder: (context, index) {
  //             return Slidable(
  //               actionPane: SlidableDrawerActionPane(),
  //               actionExtentRatio: 0.25,
  //               child: notificationItem(notifications[index]),
  //               secondaryActions: <Widget>[
  //                 Container(
  //                     height: 60,
  //                     color: Colors.grey.shade500,
  //                     child: Icon(
  //                       Icons.info_outline,
  //                       color: Colors.white,
  //                     )),
  //                 Container(
  //                     height: 60,
  //                     color: Colors.red,
  //                     child: Icon(
  //                       Icons.delete_outline_sharp,
  //                       color: Colors.white,
  //                     )),
  //               ],
  //             );
  //           }));
  // }

  // notificationItem(InstagramNotification notification) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Expanded(
  //           child: Row(
  //             children: [
  //               notification.hasStory
  //                   ? Container(
  //                       width: 50,
  //                       height: 50,
  //                       padding: EdgeInsets.all(2),
  //                       decoration: BoxDecoration(
  //                           gradient: LinearGradient(
  //                               colors: [Colors.red, Colors.orangeAccent],
  //                               begin: Alignment.topCenter,
  //                               end: Alignment.bottomLeft),
  //                           // border: Border.all(color: Colors.red),
  //                           shape: BoxShape.circle),
  //                       child: Container(
  //                         decoration: BoxDecoration(
  //                             shape: BoxShape.circle,
  //                             border:
  //                                 Border.all(color: Colors.white, width: 3)),
  //                         child: ClipRRect(
  //                             borderRadius: BorderRadius.circular(50),
  //                             child: Image.network(notification.profilePic)),
  //                       ),
  //                     )
  //                   : Container(
  //                       width: 50,
  //                       height: 50,
  //                       decoration: BoxDecoration(
  //                           shape: BoxShape.circle,
  //                           border: Border.all(
  //                               color: Colors.grey.shade300, width: 1)),
  //                       child: ClipRRect(
  //                           borderRadius: BorderRadius.circular(50),
  //                           child: Image.network(notification.profilePic)),
  //                     ),
  //               SizedBox(
  //                 width: 10,
  //               ),
  //               Flexible(
  //                 child: RichText(
  //                     text: TextSpan(children: [
  //                   TextSpan(
  //                       text: notification.name,
  //                       style: TextStyle(
  //                           color: Colors.black, fontWeight: FontWeight.bold)),
  //                   TextSpan(
  //                       text: notification.content,
  //                       style: TextStyle(color: Colors.black)),
  //                   TextSpan(
  //                     text: notification.timeAgo,
  //                     style: TextStyle(color: Colors.grey.shade500),
  //                   )
  //                 ])),
  //               )
  //             ],
  //           ),
  //         ),
  //         notification.postImage != ''
  //             ? Container(
  //                 width: 50,
  //                 height: 50,
  //                 child:
  //                     ClipRRect(child: Image.network(notification.postImage)),
  //               )
  //             : Container(
  //                 height: 35,
  //                 width: 110,
  //                 decoration: BoxDecoration(
  //                   color: Colors.blue[700],
  //                   borderRadius: BorderRadius.circular(5),
  //                 ),
  //                 child: Center(
  //                     child: Text('Follow',
  //                         style: TextStyle(color: Colors.white)))),
  //       ],
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    // var _pd = Provider.of<NotificationPd>(context);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Notification'),
    //   ),
    //   body: Stack(
    //     children: [
    //       ListView.builder(
    //         shrinkWrap: true,
    //         itemCount: 15,
    //         itemBuilder: (context, index) {
    //           return GestureDetector(
    //             onLongPress: () {
    //               // _pd.isSelecting = true;
    //               // _pd.notificationIds.add(index);
    //               // _pd.reload();
    //             },
    //             onTap: () {
    //               // if (_pd.isSelecting) {
    //               //   if (_pd.notificationIds.contains(index)) {
    //               //     _pd.notificationIds.remove(index);
    //               //   } else {
    //               //     _pd.notificationIds.add(index);
    //               //   }
    //               //   _pd.reload();
    //               // } else {
    //               //   // Do something to view the post
    //               // }
    //             },
    //             child: Card(
    //               // color: _pd.notificationIds.contains(index)
    //               //     ? Colors.grey[300]
    //               //     : Colors.white,
    //               color: Colors.white,
    //               elevation: 3.0,
    //               child: Dismissible(
    //                 key: ObjectKey('Key_$index'),
    //                 background: Container(
    //                   color: Colors.red,
    //                   child: const ListTile(
    //                     leading: Icon(
    //                       Icons.delete,
    //                       color: Colors.black,
    //                     ),
    //                     trailing: Icon(
    //                       Icons.delete,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                 ),
    //                 onDismissed: (DismissDirection direction) {
    //                   //delete the notification
    //                   debugPrint('delete the notification');
    //                 },
    //                 child: ListTile(
    //                   title: Text('Title ${index + 1}'),
    //                   subtitle: Column(
    //                     mainAxisSize: MainAxisSize.min,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         'Description ${index + 1}',
    //                         maxLines: 2,
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                       const SizedBox(height: 5),
    //                       Text(
    //                         'DateTime: ${DateTime.now()} ${index + 1}',
    //                         maxLines: 1,
    //                         overflow: TextOverflow.ellipsis,
    //                         style: const TextStyle(fontSize: 12.5),
    //                       ),
    //                     ],
    //                   ),
    //                   trailing: IconButton(
    //                     // icon: _pd.notificationRead[index]
    //                     //     ? const Icon(
    //                     //         Icons.visibility,
    //                     //         color: Colors.grey,
    //                     //       )
    //                     //     : const Icon(
    //                     //         Icons.visibility_off,
    //                     //         color: Colors.black,
    //                     //       ),

    //                     icon: const Icon(
    //                       Icons.visibility_off,
    //                       color: Colors.black,
    //                     ),

    //                     onPressed: () {
    //                       //  _pd.notificationRead[index] =
    //                       // !_pd.notificationRead[index];
    //                       //  _pd.reload();
    //                     },
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           );
    //         },
    //       ),
    //       // if (_pd.isSelecting)
    //       Align(
    //         alignment: Alignment.bottomCenter,
    //         child: Card(
    //           color: Colors.blue[50],
    //           elevation: 5.0,
    //           shape: const RoundedRectangleBorder(
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(20),
    //               topRight: Radius.circular(20),
    //             ),
    //           ),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               InkWell(
    //                 onTap: () {
    //                   // _pd.isSelecting = false;
    //                   // _pd.notificationIds.clear();
    //                   // _pd.reload();
    //                 },
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: const [
    //                     SizedBox(height: 3),
    //                     Icon(
    //                       Icons.close,
    //                       size: 22.0,
    //                     ),
    //                     Text(
    //                       'Cancel',
    //                       style: TextStyle(fontSize: 12.5),
    //                     ),
    //                     SizedBox(height: 3),
    //                   ],
    //                 ),
    //               ),
    //               InkWell(
    //                 onTap: () {
    //                   // _pd.isSelecting = false;
    //                   // for (var element in _pd.notificationIds) {
    //                   //   _pd.notificationRead[element] = true;
    //                   // }
    //                   // _pd.notificationIds.clear();
    //                   // _pd.reload();
    //                 },
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: const [
    //                     SizedBox(height: 3),
    //                     Icon(
    //                       Icons.visibility,
    //                       size: 22.0,
    //                     ),
    //                     Text(
    //                       'Mark as read',
    //                       style: TextStyle(fontSize: 12.5),
    //                     ),
    //                     SizedBox(height: 3),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

//////////SCREEN 3 TRIAL
    ///
    ///
    return Scaffold(
        body: Background(
            child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 30.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            data: 'Reminder',
            textAlign: TextAlign.start,
            fontSize: 23.sp,
            fontWeight: FontWeight.w600,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppConst.kWhite,
            ),
            child: const Row(
              children: [
                CustomText(data: 'Today', textAlign: TextAlign.start),
                CustomText(data: 'start', textAlign: TextAlign.start),
                CustomText(data: 'end', textAlign: TextAlign.start),
              ],
            ),
          ),
          const CustomText(data: 'TITLE', textAlign: TextAlign.start),
          const CustomText(
              data: 'Task description', textAlign: TextAlign.justify),
          Positioned(
            right: 12,
            top: -10,
            child: Image.asset(Assets.onboard),
          )
        ],
      ),
    )));
  }
}
