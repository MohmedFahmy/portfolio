import 'package:flutter/material.dart';
import 'package:portfolio/web/widgets/input_form_filed_widget.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';
import 'package:portfolio/web/widgets/web_drawer.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: webDrawer(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  '/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  const Spacer(flex: 3),
                  TabsWeb(title: 'Home', route: '/'),
                  const Spacer(),
                  TabsWeb(title: 'About', route: '/about'),
                  const Spacer(),
                  TabsWeb(title: 'Work', route: '/work'),
                  const Spacer(),
                  TabsWeb(title: 'Blog', route: '/blog'),
                  const Spacer(),
                  TabsWeb(title: 'Contact', route: '/contact'),
                  const Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 30.0),
              SansText(
                text: 'Contact me',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20.0),
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
                      SizedBox(height: 20.0),
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
                      SizedBox(height: 20.0),
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
              SizedBox(height: 20.0),
              InputFormFiledWidget(
                heading: 'Message',
                hintText: 'Please enter your message',
                maxLines: 10,
                width: deviceWidth / 1.5,
              ),
              SizedBox(height: 30.0),
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
      ),
    );
  }
}
