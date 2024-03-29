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
    apiKey: 'AIzaSyAL-bzBPoHhpO-MawsrVfr15j-ZBCTmuvY',
    appId: '1:177270446318:web:5adb577b225cc1b603fbff',
    messagingSenderId: '177270446318',
    projectId: 'ecommerce-abohamza',
    authDomain: 'ecommerce-abohamza.firebaseapp.com',
    storageBucket: 'ecommerce-abohamza.appspot.com',
    measurementId: 'G-6X3RHWT6JJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATu05bJok_wxQZEL2qqkP3PFSV-5rzKAI',
    appId: '1:177270446318:android:ce9fd8ba4c45bfc503fbff',
    messagingSenderId: '177270446318',
    projectId: 'ecommerce-abohamza',
    storageBucket: 'ecommerce-abohamza.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApeR8g9QQTG8xxvDxhRlK1cVxiQj81WAk',
    appId: '1:177270446318:ios:22a98ac9128e855003fbff',
    messagingSenderId: '177270446318',
    projectId: 'ecommerce-abohamza',
    storageBucket: 'ecommerce-abohamza.appspot.com',
    iosBundleId: 'com.example.ecommerceFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApeR8g9QQTG8xxvDxhRlK1cVxiQj81WAk',
    appId: '1:177270446318:ios:884fb3aa52889eed03fbff',
    messagingSenderId: '177270446318',
    projectId: 'ecommerce-abohamza',
    storageBucket: 'ecommerce-abohamza.appspot.com',
    iosBundleId: 'com.example.ecommerceFlutter.RunnerTests',
  );
}