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
    apiKey: 'AIzaSyD_wwNFKK7I1BWXCm8uHjiMcU2yibLNHRk',
    appId: '1:926107170934:web:5b676f5ccf76f325ed8757',
    messagingSenderId: '926107170934',
    projectId: 'instagramhomecopy',
    authDomain: 'instagramhomecopy.firebaseapp.com',
    storageBucket: 'instagramhomecopy.appspot.com',
    measurementId: 'G-G5PDWXZNHR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMlzCj1TswbZJDmYuSrEHI4nfY0C-7eok',
    appId: '1:926107170934:android:c847961b20aa4688ed8757',
    messagingSenderId: '926107170934',
    projectId: 'instagramhomecopy',
    storageBucket: 'instagramhomecopy.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_ZKlrDjaJoq4R2qZwFe3f1KjG7d1n2QE',
    appId: '1:926107170934:ios:75f5c5052a5e260ded8757',
    messagingSenderId: '926107170934',
    projectId: 'instagramhomecopy',
    storageBucket: 'instagramhomecopy.appspot.com',
    iosClientId:
        '926107170934-tun6ftu67u7tgu7abhiicdsrb2ooggqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramHomeCopy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_ZKlrDjaJoq4R2qZwFe3f1KjG7d1n2QE',
    appId: '1:926107170934:ios:75f5c5052a5e260ded8757',
    messagingSenderId: '926107170934',
    projectId: 'instagramhomecopy',
    storageBucket: 'instagramhomecopy.appspot.com',
    iosClientId:
        '926107170934-tun6ftu67u7tgu7abhiicdsrb2ooggqe.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramHomeCopy',
  );
}