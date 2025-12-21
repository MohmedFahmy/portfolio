import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/widgets/text_widgets.dart';

class LandingWebPage extends StatefulWidget {
  const LandingWebPage({super.key});

  @override
  State<LandingWebPage> createState() => _LandingWebPageState();
}

class _LandingWebPageState extends State<LandingWebPage> {
  @override
  Widget build(BuildContext context) {
    var hightDevice = MediaQuery.of(context).size.height;
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
      body: ListView(
        children: [
          // the First Section
          Container(
            height: hightDevice - 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: SansText(
                        text: 'Hello I\'m',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    SansText(
                      text: 'Mohamed Fahmy',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    SansText(
                      text: 'Flutter Developer',
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 15),
                    IconTextWidget(
                      icon: Icons.email,
                      text: 'mohammedfahmy130@gmail.com',
                    ),
                    SizedBox(height: 10),
                    IconTextWidget(icon: Icons.call, text: '+20 1065224402'),
                    SizedBox(height: 10),
                    IconTextWidget(
                      icon: Icons.location_on,
                      text: 'Cairo, Egypt',
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black54,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        'assets/cropped_circle_image.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // the Second Section
          Container(
            height: hightDevice / 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansText(
                  text: 'About Me',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20),
                SansText(
                  text:
                      'Flutter developer with experience in building cross-platform mobile applications.',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                SansText(
                  text:
                      'Strong understanding of Dart and the Flutter framework, with a focus on clean and maintainable code.',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                SansText(
                  text:
                      'Passionate about creating elegant and functional user interfaces that enhance user experience.',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
                SansText(
                  text:
                      'Keen on delivering high-quality, efficient, and scalable mobile solutions.',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        SansText(text: text, fontSize: 15, fontWeight: FontWeight.normal),
      ],
    );
  }
}
