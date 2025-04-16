import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCtpalGGaN2jX1sNLp-i7tO3XTn-jjq04",
            authDomain: "carbon-quest-c9ac2.firebaseapp.com",
            projectId: "carbon-quest-c9ac2",
            storageBucket: "carbon-quest-c9ac2.firebasestorage.app",
            messagingSenderId: "871413050411",
            appId: "1:871413050411:web:699a9a61d89548df514e6e",
            measurementId: "G-QZTFFD3NJ5"));
  } else {
    await Firebase.initializeApp();
  }
}
