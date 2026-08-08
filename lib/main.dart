import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:portfolio/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setPathUrlStrategy();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: dotenv.get("FIREBASE_API_KEY"),
        authDomain: dotenv.get("FIREBASE_AUTH_DOMAIN"),
        projectId: dotenv.get("FIREBASE_PROJECT_ID"),
        storageBucket: dotenv.get("FIREBASE_STORAGE_BUCKET"),
        messagingSenderId: dotenv.get("FIREBASE_MESSAGING_SENDER_ID"),
        appId: dotenv.get("FIREBASE_APP_ID"),
        measurementId: dotenv.get("FIREBASE_MEASUREMENT_ID"),
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

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
