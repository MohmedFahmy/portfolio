import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';

import '../web/widgets/skill_widget.dart';
import '../web/widgets/text_widgets.dart';
import 'widget/skills_slider.dart';

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
              SizedBox(height: 40.0),
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SkillsCarousel()],
              ),
              SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
