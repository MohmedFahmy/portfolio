import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/widgets/text_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/icon_text_widget.dart';
import '../widgets/input_form_filed_widget.dart';
import '../widgets/skill_widget.dart';
import '../widgets/what_i_do_widget.dart';

class LandingWebPage extends StatefulWidget {
  const LandingWebPage({super.key});

  @override
  State<LandingWebPage> createState() => _LandingWebPageState();
}

class _LandingWebPageState extends State<LandingWebPage> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(imgPath, width: 35),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var hightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
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
                  height: widthDevice / 1.9,
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
                        SkillWidget(skill: 'iOS', color: Colors.tealAccent),
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
                    AnimatedCard(
                      imagePath: '/app.png',
                      text: 'Creating cross-platform mobile apps',
                      reverse: false,
                      title: 'Mobile App Development',
                      fit: BoxFit.contain,
                    ),
                    AnimatedCard(
                      imagePath: '/webL.png',
                      text: 'Building responsive and dynamic websites',
                      fit: BoxFit.contain,
                      reverse: false,
                      title: 'Web Development',
                    ),
                    AnimatedCard(
                      imagePath: '/backend.png',
                      text: 'Developing robust back-end services',
                      reverse: false,
                      title: 'Back-end Development',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // the Fourth Section
          Container(
            height: hightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansText(
                  text: 'Contact me',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InputFormFiledWidget(
                          heading: 'First name',
                          hintText: 'Please enter your first name',
                          maxLines: 1,
                          width: 350,
                        ),
                        SizedBox(height: 15),
                        InputFormFiledWidget(
                          heading: 'Email',
                          hintText: 'Please enter your email address',
                          maxLines: 1,
                          width: 350,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InputFormFiledWidget(
                          heading: 'Last name',
                          hintText: 'please enter your last name',
                          maxLines: 1,
                          width: 350,
                        ),
                        SizedBox(height: 15),
                        InputFormFiledWidget(
                          heading: 'Phone number',
                          hintText: 'Please enter your phone number',
                          maxLines: 1,
                          width: 350,
                        ),
                      ],
                    ),
                  ],
                ),
                InputFormFiledWidget(
                  heading: 'Message',
                  hintText: 'Please enter your message',
                  maxLines: 10,
                  width: widthDevice / 1.5,
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 60,
                  minWidth: 200,
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
          ),
          SizedBox(height: 30.0),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('/cropped_circle_image.png'),
              ),
            ),
            SizedBox(height: 15.0),
            SansText(
              text: 'Mohamed Fahmy',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                  '/linkedin.svg',
                  'https://www.linkedin.com/in/mohamedfahmy00/',
                ),
                urlLauncher('/github.svg', 'https://github.com/MohmedFahmy'),
                urlLauncher(
                  '/facebook.svg',
                  'https://web.facebook.com/mohamed.fahmey.7549',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
