import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDwSVUVEGmVCM4qqT9GpS6ha6Z-njyLi-Q",
        authDomain: "mohamed-fahmy-aea38.firebaseapp.com",
        projectId: "mohamed-fahmy-aea38",
        storageBucket: "mohamed-fahmy-aea38.firebasestorage.app",
        messagingSenderId: "130805396394",
        appId: "1:130805396394:web:07b73badb945fcaaa1f1d3",
        measurementId: "G-7GWS8W3LPL",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
