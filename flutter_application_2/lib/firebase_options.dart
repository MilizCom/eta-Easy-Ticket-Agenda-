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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDHvMldNPjJrnSOolxaiz_ZFcYIou29uzI',
    appId: '1:948771486947:web:192fe16515fbaf8d3f19d6',
    messagingSenderId: '948771486947',
    projectId: 'easy-ticket-agenda',
    authDomain: 'easy-ticket-agenda.firebaseapp.com',
    storageBucket: 'easy-ticket-agenda.appspot.com',
    measurementId: 'G-C7C1EL8JG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN8c5a6cfilvDdZ7oALjhM5nj5BNcmBqQ',
    appId: '1:948771486947:android:5c59da20445c54943f19d6',
    messagingSenderId: '948771486947',
    projectId: 'easy-ticket-agenda',
    storageBucket: 'easy-ticket-agenda.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlcqnEsuiaSqbkFFxLkqGCD7hhylonbmU',
    appId: '1:948771486947:ios:31ce5c7bcbfc45c53f19d6',
    messagingSenderId: '948771486947',
    projectId: 'easy-ticket-agenda',
    storageBucket: 'easy-ticket-agenda.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
