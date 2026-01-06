import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';
import '../web/widgets/input_form_filed_widget.dart';
import '../web/widgets/text_widgets.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Image.asset('assets/cropped_circle_image.png'),
              ),
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            TabsMobil(title: 'Home', route: '/'),
            SizedBox(height: 20.0),
            TabsMobil(title: 'About Me', route: '/about'),
            SizedBox(height: 20.0),
            TabsMobil(title: 'Works', route: '/works'),
            SizedBox(height: 20.0),
            TabsMobil(title: 'Blog', route: '/blog'),
            SizedBox(height: 20.0),

            TabsMobil(title: 'Contact', route: '/contact'),
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/linkedin.svg'),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://www.linkedin.com/in/mohamedfahmy00/'),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/github.svg'),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://github.com/MohmedFahmy'),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/facebook.svg', width: 48.0),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://web.facebook.com/mohamed.fahmey.7549'),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 35.0),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  '/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              expandedHeight: 400.0,
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
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
                  const SizedBox(height: 20.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
