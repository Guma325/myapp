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
    apiKey: 'AIzaSyAJteIQMD2RCPUFAsw5p30j4ttAuH6UDK0',
    appId: '1:132099671146:web:f84b61cda453a7b377f613',
    messagingSenderId: '132099671146',
    projectId: 'proanalyzer-39b94',
    authDomain: 'proanalyzer-39b94.firebaseapp.com',
    storageBucket: 'proanalyzer-39b94.appspot.com',
    measurementId: 'G-5J0TNS810Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnThxJEGmGSAC3Q4hZjNiM7v7ujftzHwU',
    appId: '1:132099671146:android:4ee375eb3486b85d77f613',
    messagingSenderId: '132099671146',
    projectId: 'proanalyzer-39b94',
    storageBucket: 'proanalyzer-39b94.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAF4NWCWm05LHfvHKigQrDQAXmDAHLOWuU',
    appId: '1:132099671146:ios:62c50afc9a52c9cb77f613',
    messagingSenderId: '132099671146',
    projectId: 'proanalyzer-39b94',
    storageBucket: 'proanalyzer-39b94.appspot.com',
    iosClientId: '132099671146-fbji0q4r65nb77di9b6ssca3cbei81ag.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAF4NWCWm05LHfvHKigQrDQAXmDAHLOWuU',
    appId: '1:132099671146:ios:62c50afc9a52c9cb77f613',
    messagingSenderId: '132099671146',
    projectId: 'proanalyzer-39b94',
    storageBucket: 'proanalyzer-39b94.appspot.com',
    iosClientId: '132099671146-fbji0q4r65nb77di9b6ssca3cbei81ag.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );
}
