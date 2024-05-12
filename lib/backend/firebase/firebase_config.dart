import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBm2gg7rpd9WMcyp38uWdg00VXr8ozEsGA",
            authDomain: "old-on-8100r2.firebaseapp.com",
            projectId: "old-on-8100r2",
            storageBucket: "old-on-8100r2.appspot.com",
            messagingSenderId: "255682301629",
            appId: "1:255682301629:web:a11cbd94ed63543072f1d4"));
  } else {
    await Firebase.initializeApp();
  }
}
