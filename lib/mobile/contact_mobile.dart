import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';

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
      endDrawer: endMobileDrawer(),

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
