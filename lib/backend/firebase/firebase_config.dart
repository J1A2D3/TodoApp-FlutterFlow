import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC_Kv1kdZm3tllKaSn_aIYNLdC7nb_Ys-c",
            authDomain: "todo-pe7cam.firebaseapp.com",
            projectId: "todo-pe7cam",
            storageBucket: "todo-pe7cam.firebasestorage.app",
            messagingSenderId: "65531456140",
            appId: "1:65531456140:web:ece1eb6be59a499524a9a9"));
  } else {
    await Firebase.initializeApp();
  }
}
