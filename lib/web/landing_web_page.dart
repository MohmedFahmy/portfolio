import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingWebPage extends StatefulWidget {
  const LandingWebPage({super.key});

  @override
  State<LandingWebPage> createState() => _LandingWebPageState();
}

class _LandingWebPageState extends State<LandingWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black, size: 25),
        title: Row(
          children: [
            const Spacer(flex: 3),
            TabsWeb('Home'),
            const Spacer(),
            TabsWeb('Work'),
            const Spacer(),
            TabsWeb('Blog'),
            const Spacer(),
            TabsWeb('About'),
            const Spacer(),
            TabsWeb('Contact'),
            const Spacer(),
          ],
        ),
      ),
      body: CircleAvatar(
        radius: 103,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/cropped_circle_image.png'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
