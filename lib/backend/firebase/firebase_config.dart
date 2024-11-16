import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBcglJggCOrRIR01nLx0GwysU2wNf3H8qY",
            authDomain: "jobexplore-hdnljq.firebaseapp.com",
            projectId: "jobexplore-hdnljq",
            storageBucket: "jobexplore-hdnljq.firebasestorage.app",
            messagingSenderId: "972606243719",
            appId: "1:972606243719:web:659ad9bd18d4a728654922"));
  } else {
    await Firebase.initializeApp();
  }
}
