import 'package:flutter/material.dart';
import 'package:portfolio/web/widgets/skill_widget.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';
import 'package:portfolio/web/widgets/web_drawer.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: webDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black, size: 25),
        title: Row(
          children: [
            const Spacer(flex: 3),
            TabsWeb(title: 'Home', route: '/'),
            const Spacer(),
            TabsWeb(title: 'About', route: '/about'),
            const Spacer(),
            TabsWeb(title: 'Works', route: '/work'),
            const Spacer(),
            TabsWeb(title: 'Blog', route: '/blog'),
            const Spacer(),
            TabsWeb(title: 'Contact', route: '/contact'),
            const Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansText(
                      text: 'About me',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 20.0),
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
                        SkillWidget(
                          skill: 'Android',
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 10),
                        SkillWidget(skill: 'iOS', color: Colors.orangeAccent),
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
          SizedBox(height: 40.0),
          // development second section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: SansText(
              text: 'Services & Expertise',
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                width: 260.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.tealAccent),
                ),
                child: Image.asset('assets/webl.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SansText(
                    text: 'Web development',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 8.0),
                  SansText(
                    text:
                        'Developing responsive web interfaces with Flutter Web.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text: 'Focused on clean layouts and scalable UI design.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Optimized for performance and cross-browser compatibility.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Delivering modern web experiences with consistent user flow.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
            indent: 100.0,
            endIndent: 100.0,
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SansText(
                    text: 'App development',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 8.0),
                  SansText(
                    text:
                        'Building high-quality cross-platform mobile applications using Flutter.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Focused on smooth performance and clean app architecture.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Creating intuitive user experiences with modern UI patterns.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Delivering scalable and maintainable mobile solutions.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: 260.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.tealAccent),
                ),
                child: Image.asset('assets/app.png'),
              ),
            ],
          ),
          SizedBox(height: 50.0),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
            indent: 100.0,
            endIndent: 100.0,
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                width: 260.0,
                height: 260.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.tealAccent),
                ),
                child: Image.asset('assets/backend.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SansText(
                    text: 'Backend development',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 8.0),
                  SansText(
                    text:
                        'Developing scalable back-end services using Node.js and MongoDB.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Designing RESTful APIs with clean and maintainable structure.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Handling authentication, data validation, and business logic.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 6),
                  SansText(
                    text:
                        'Focused on performance, security, and database efficiency.',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
