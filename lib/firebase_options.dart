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
    apiKey: 'AIzaSyDdQbXeUt5IGyocJa_oVXtQ2OmI7Vn61BE',
    appId: '1:616142681984:web:b229707940e95bf96ab365',
    messagingSenderId: '616142681984',
    projectId: 'jokes-app-914d6',
    authDomain: 'jokes-app-914d6.firebaseapp.com',
    storageBucket: 'jokes-app-914d6.firebasestorage.app',
    measurementId: 'G-RZVGM1PGH4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcxx8AVLcPD1i9CD9nwMccmu-NMs0veDw',
    appId: '1:616142681984:android:b393adc6175ee59f6ab365',
    messagingSenderId: '616142681984',
    projectId: 'jokes-app-914d6',
    storageBucket: 'jokes-app-914d6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbwdJwrOH0fvOPzhJVZcsqGRg7Nr7m2Ns',
    appId: '1:616142681984:ios:6216b6a1f692c5b66ab365',
    messagingSenderId: '616142681984',
    projectId: 'jokes-app-914d6',
    storageBucket: 'jokes-app-914d6.firebasestorage.app',
    iosBundleId: 'mk.ukim.finki.misLab2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbwdJwrOH0fvOPzhJVZcsqGRg7Nr7m2Ns',
    appId: '1:616142681984:ios:6216b6a1f692c5b66ab365',
    messagingSenderId: '616142681984',
    projectId: 'jokes-app-914d6',
    storageBucket: 'jokes-app-914d6.firebasestorage.app',
    iosBundleId: 'mk.ukim.finki.misLab2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDdQbXeUt5IGyocJa_oVXtQ2OmI7Vn61BE',
    appId: '1:616142681984:web:d0b154bc539b00ca6ab365',
    messagingSenderId: '616142681984',
    projectId: 'jokes-app-914d6',
    authDomain: 'jokes-app-914d6.firebaseapp.com',
    storageBucket: 'jokes-app-914d6.firebasestorage.app',
    measurementId: 'G-DMF801BGGR',
  );
}
