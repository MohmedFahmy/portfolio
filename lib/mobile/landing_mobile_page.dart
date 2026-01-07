import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';
import 'package:portfolio/web/widgets/input_form_filed_widget.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';

import '../web/widgets/skill_widget.dart';
import 'widget/skills_slider.dart';

class LandingMobilePage extends StatefulWidget {
  const LandingMobilePage({super.key});

  @override
  State<LandingMobilePage> createState() => _LandingMobilePageState();
}

class _LandingMobilePageState extends State<LandingMobilePage> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: endMobileDrawer(),
      body: ListView(
        children: [
          // the First Section intro
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0),
                Center(
                  child: CircleAvatar(
                    radius: 119.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 114.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 112.0,
                        backgroundImage: AssetImage(
                          'assets/cropped_circle_image.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansText(
                        text: 'Hello I\'m',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SansText(
                      text: 'Mohamed Fahmy',
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                    SansText(
                      text: 'Flutter Developer',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 5.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.phone),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 20.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        SansText(
                          text: 'mohammedfahmy130@gmail.com',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        SansText(
                          text: '+20 106 522 4402',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                        SansText(
                          text: 'Cairo, Egypt',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // the second Section about me
          SizedBox(height: 120.0),
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
                  text: 'The art security for Android, iOS, Web, Mac and Linux',
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 20.0),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 7.0,
                  children: [
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

          //the Third Section What i do & Contact me
          SizedBox(height: 100.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansText(
                text: 'What I do',
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 40.0),
              SkillsCarousel(),
              SizedBox(height: 80.0),
              // contacts section
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansText(
                    text: 'Contact me',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                  InputFormFiledWidget(
                    heading: 'First name',
                    hintText: 'Please enter your first name',
                    maxLines: 1,
                    width: deviceWidth / 1.4,
                  ),
                  SizedBox(height: 15),
                  InputFormFiledWidget(
                    heading: 'Last name',
                    hintText: 'please enter your last name',
                    maxLines: 1,
                    width: deviceWidth / 1.4,
                  ),
                  SizedBox(height: 15),
                  InputFormFiledWidget(
                    heading: 'Email',
                    hintText: 'Please enter your email address',
                    maxLines: 1,
                    width: deviceWidth / 1.4,
                  ),
                  SizedBox(height: 15),
                  InputFormFiledWidget(
                    heading: 'Phone number',
                    hintText: 'Please enter your phone number',
                    maxLines: 1,
                    width: deviceWidth / 1.4,
                  ),
                  SizedBox(height: 15),
                  InputFormFiledWidget(
                    heading: 'Message',
                    hintText: 'Please enter your message',
                    maxLines: 10,
                    width: deviceWidth / 1.4,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 60,
                    minWidth: deviceWidth / 2.2,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.tealAccent,
                    child: SansText(
                      text: 'Submit',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ],
      ),
    );
  }
}
