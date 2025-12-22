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
            TabsWeb('About'),
            const Spacer(),
            TabsWeb('Work'),
            const Spacer(),
            TabsWeb('Blog'),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/web.jpg'),
                  height: hightDevice / 1.7,
                ),
                Column(
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
                          'Flutter developer specializing in cross-platform mobile applications.',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    SansText(
                      text:
                          'Strong knowledge of Dart and Flutter with clean, maintainable code',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    SansText(
                      text:
                          'Passionate about building elegant and functional user interfaces.',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    SansText(
                      text:
                          'Focused on high-quality, scalable mobile solutions.',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SkillWidget(skill: 'Flutter', color: Colors.tealAccent),
                        SizedBox(width: 10),
                        SkillWidget(skill: 'Android', color: Colors.tealAccent),
                        SizedBox(width: 10),
                        SkillWidget(skill: 'ios', color: Colors.tealAccent),
                        SizedBox(width: 10),
                        SkillWidget(skill: 'Dart', color: Colors.blueAccent),
                      ],
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        SkillWidget(skill: 'Git', color: Colors.purpleAccent),
                        SizedBox(width: 10),
                        SkillWidget(skill: 'REST API', color: Colors.redAccent),
                        SizedBox(width: 10),
                        SkillWidget(
                          skill: 'State Management',
                          color: Colors.indigoAccent,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SkillWidget(
                          skill: 'Firebase',
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(width: 10),
                        SkillWidget(
                          skill: 'Supabase',
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // the Third Section
          Container(
            height: hightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansText(
                  text: 'What i do?',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/webL.png',
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
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

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key, required this.skill, required this.color});
  final String skill;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, style: BorderStyle.solid, width: 2.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: SansText(text: skill, fontSize: 16, fontWeight: FontWeight.normal),
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
