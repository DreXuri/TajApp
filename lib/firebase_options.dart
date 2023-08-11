// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyApLYWDhlJ7TaPkrNZm9HNog0QdHE7KZNU',
    appId: '1:364634384884:web:9ea8cbbc67699ec192f1a1',
    messagingSenderId: '364634384884',
    projectId: 'newproject-b6a5d',
    authDomain: 'newproject-b6a5d.firebaseapp.com',
    storageBucket: 'newproject-b6a5d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAj88nq_L9a4IuhDJBABqeYnBTibv5O9WQ',
    appId: '1:364634384884:android:c5b9935d362225c592f1a1',
    messagingSenderId: '364634384884',
    projectId: 'newproject-b6a5d',
    storageBucket: 'newproject-b6a5d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdpBSKOGXHB6ZR_UWjSeWK9xKpvW0SZIQ',
    appId: '1:364634384884:ios:b3fe3b76cd45d6d292f1a1',
    messagingSenderId: '364634384884',
    projectId: 'newproject-b6a5d',
    storageBucket: 'newproject-b6a5d.appspot.com',
    iosClientId: '364634384884-i9hr83qmaps5cl1s14gp55gokv5p74c9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdpBSKOGXHB6ZR_UWjSeWK9xKpvW0SZIQ',
    appId: '1:364634384884:ios:b3fe3b76cd45d6d292f1a1',
    messagingSenderId: '364634384884',
    projectId: 'newproject-b6a5d',
    storageBucket: 'newproject-b6a5d.appspot.com',
    iosClientId: '364634384884-i9hr83qmaps5cl1s14gp55gokv5p74c9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoapp',
  );
}