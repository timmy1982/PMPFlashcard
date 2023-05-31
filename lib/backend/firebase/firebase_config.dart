import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBdeJ3gaNzyUoRPvOVhyVHlDR5Px7_Eu8w",
            authDomain: "pmp-flash-card.firebaseapp.com",
            projectId: "pmp-flash-card",
            storageBucket: "pmp-flash-card.appspot.com",
            messagingSenderId: "112349333418",
            appId: "1:112349333418:web:66a73b87f26ffcfc1e4dd3",
            measurementId: "G-TJKXBX2SMG"));
  } else {
    await Firebase.initializeApp();
  }
}
