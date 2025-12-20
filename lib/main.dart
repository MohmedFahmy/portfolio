import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_mobile_page.dart';
import 'package:portfolio/web/landing_web_page.dart';

void main() {
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
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return LandingWebPage();
          } else {
            return const LandingMobilePage();
          }
        },
      ),
    );
  }
}
