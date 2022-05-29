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
    apiKey: 'AIzaSyBGWGC30AxgaFCUk2efPBiXynaZ-AoUcS8',
    appId: '1:209827347455:web:a9fc28399d0313756605ca',
    messagingSenderId: '209827347455',
    projectId: 'flutter-makale',
    authDomain: 'flutter-makale.firebaseapp.com',
    storageBucket: 'flutter-makale.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPQexzhDJPqeZCVc_j8zhsO2eFBwRy8vA',
    appId: '1:209827347455:android:3d8c3acbfac984b56605ca',
    messagingSenderId: '209827347455',
    projectId: 'flutter-makale',
    storageBucket: 'flutter-makale.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABbfdZzfToTqdP6WdauEa7eeBVuW9_F5g',
    appId: '1:209827347455:ios:8a955b2a62cc78916605ca',
    messagingSenderId: '209827347455',
    projectId: 'flutter-makale',
    storageBucket: 'flutter-makale.appspot.com',
    iosClientId: '209827347455-05r8t8ehip02kj1b7t6096bp9g8q2gn6.apps.googleusercontent.com',
    iosBundleId: 'com.example.buyutec',
  );
}
