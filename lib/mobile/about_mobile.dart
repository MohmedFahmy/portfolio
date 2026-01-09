import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';
import 'package:portfolio/mobile/widget/services_widget.dart';

import '../web/widgets/skill_widget.dart';
import '../web/widgets/text_widgets.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black, size: 35.0),
          elevation: 0.0,
        ),
        endDrawer: endMobileDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              // introduction first section
              Center(
                child: CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 113.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 110.0,
                      backgroundImage: AssetImage(
                        'assets/cropped_circle_image.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansText(
                      text: 'About me',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 12.0),
                    SansText(
                      text:
                          'Hello I\'m mohamed fahmy, I specialize in flutter development',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SansText(
                      text:
                          'I strive to ensure astounding performance with state of',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SansText(
                      text:
                          'The art security for Android, iOS, Web, Mac and Linux',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SkillWidget(
                                skill: 'Flutter',
                                color: Colors.tealAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'Android',
                                color: Colors.greenAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'iOS',
                                color: Colors.orangeAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'Dart',
                                color: Colors.blueAccent,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 8),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SkillWidget(
                                skill: 'Git',
                                color: Colors.purpleAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'REST API',
                                color: Colors.redAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'State Management',
                                color: Colors.indigoAccent,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 8),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SkillWidget(
                                skill: 'Firebase',
                                color: Colors.orangeAccent,
                              ),
                              const SizedBox(width: 10),
                              SkillWidget(
                                skill: 'Supabase',
                                color: Colors.lightGreen,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              // development second section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                child: SansText(
                  text: 'Services & Expertise',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ServiceSection(
                    title: 'Web development',
                    imagePath: 'assets/webl.png',
                    descriptions: [
                      'Developing responsive web interfaces with Flutter Web.',
                      'Focused on clean layouts and scalable UI design.',
                      'Optimized for performance and cross-browser compatibility.',
                      'Delivering modern web experiences with consistent user flow.',
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Divider(color: Colors.grey, thickness: 1.5),
                  SizedBox(height: 45.0),
                  ServiceSection(
                    title: 'App development',
                    imagePath: 'assets/app.png',
                    imageFirst: false,
                    descriptions: [
                      'Building high-quality cross-platform mobile applications using Flutter.',
                      'Focused on smooth performance and clean app architecture.',
                      'Creating intuitive user experiences with modern UI patterns.',
                      'Delivering scalable and maintainable mobile solutions.',
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Divider(color: Colors.grey, thickness: 1.5),
                  SizedBox(height: 45.0),
                  ServiceSection(
                    title: 'Backend development',
                    imagePath: 'assets/backend.png',
                    descriptions: [
                      'Developing scalable back-end services using Node.js and MongoDB.',
                      'Designing RESTful APIs with clean and maintainable structure.',
                      'Handling authentication, data validation, and business logic.',
                      'Focused on performance, security, and database efficiency.',
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
