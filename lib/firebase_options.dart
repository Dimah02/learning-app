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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBDK77rCalkSBdl2e26IIwhLFtUoDwgofw',
    appId: '1:638772491753:web:18a0a6b891c2c2e3578778',
    messagingSenderId: '638772491753',
    projectId: 'test-d7957',
    authDomain: 'test-d7957.firebaseapp.com',
    storageBucket: 'test-d7957.appspot.com',
    measurementId: 'G-VWYG5WH0GJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLgIfcKw9XKTyM3S1X63D3JF5-WUCZ1Cs',
    appId: '1:638772491753:android:70e05c15a1618227578778',
    messagingSenderId: '638772491753',
    projectId: 'test-d7957',
    storageBucket: 'test-d7957.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPFaZfp0-O5p0yP2IJdYszV81nx0_aFmk',
    appId: '1:638772491753:ios:c652d23d8aefb729578778',
    messagingSenderId: '638772491753',
    projectId: 'test-d7957',
    storageBucket: 'test-d7957.appspot.com',
    iosBundleId: 'com.example.learningApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBDK77rCalkSBdl2e26IIwhLFtUoDwgofw',
    appId: '1:638772491753:web:c5d1cc9106238788578778',
    messagingSenderId: '638772491753',
    projectId: 'test-d7957',
    authDomain: 'test-d7957.firebaseapp.com',
    storageBucket: 'test-d7957.appspot.com',
    measurementId: 'G-KSWTEC7FK5',
  );
}
