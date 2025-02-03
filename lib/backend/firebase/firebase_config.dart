import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC8eyDdQqkBq5VLVDi3kNuDxR2pEXAj_1M",
            authDomain: "sure-attendance-6sqzak.firebaseapp.com",
            projectId: "sure-attendance-6sqzak",
            storageBucket: "sure-attendance-6sqzak.firebasestorage.app",
            messagingSenderId: "248784896658",
            appId: "1:248784896658:web:c3432ebbfa0e500ee39c4b"));
  } else {
    await Firebase.initializeApp();
  }
}
