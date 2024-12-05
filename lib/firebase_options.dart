// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCJuTC_Dk1IBfiGRLcPS3rt5vMeqaHp8nE',
    appId: '1:1097334981794:web:e9e6797a98129961f283fb',
    messagingSenderId: '1097334981794',
    projectId: 'chatapp1-62259',
    authDomain: 'chatapp1-62259.firebaseapp.com',
    storageBucket: 'chatapp1-62259.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbfddm216Wg-Vdf_-meJLosJLlFpwFY54',
    appId: '1:1097334981794:android:299aa0acecd0bd20f283fb',
    messagingSenderId: '1097334981794',
    projectId: 'chatapp1-62259',
    storageBucket: 'chatapp1-62259.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYxaCtDBcuq2Bpqnsncf1oSgAZAURbGVk',
    appId: '1:1097334981794:ios:263389d099229169f283fb',
    messagingSenderId: '1097334981794',
    projectId: 'chatapp1-62259',
    storageBucket: 'chatapp1-62259.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYxaCtDBcuq2Bpqnsncf1oSgAZAURbGVk',
    appId: '1:1097334981794:ios:263389d099229169f283fb',
    messagingSenderId: '1097334981794',
    projectId: 'chatapp1-62259',
    storageBucket: 'chatapp1-62259.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCJuTC_Dk1IBfiGRLcPS3rt5vMeqaHp8nE',
    appId: '1:1097334981794:web:663a9bdc71bbe81af283fb',
    messagingSenderId: '1097334981794',
    projectId: 'chatapp1-62259',
    authDomain: 'chatapp1-62259.firebaseapp.com',
    storageBucket: 'chatapp1-62259.appspot.com',
  );
}
