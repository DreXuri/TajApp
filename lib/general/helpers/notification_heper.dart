import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class NotificationHelper {
  final WidgetRef ref;

  NotificationHelper({required this.ref});

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  String? selectedNotificationPayload;

  final BehaviorSubject<String?> selectedNotificationSubject =
      BehaviorSubject<String?>();

  initializedNotification() async {}
}
