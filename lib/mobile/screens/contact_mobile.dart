import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';

import '../../components.dart';
import '../../input_form_filed_widget.dart';
import '../../web/widgets/text_widgets.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                    'assets/contact_image.jpg',
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
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20.0),

                    SansText(
                      text: 'Contact me',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),

                    const SizedBox(height: 30.0),

                    InputFormFiledWidget(
                      heading: 'First name',
                      hintText: 'Please enter your first name',
                      maxLines: 1,
                      width: deviceWidth / 1.4,
                      controller: _firstNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'First name is required';
                        }
                      },
                    ),

                    const SizedBox(height: 15.0),

                    InputFormFiledWidget(
                      heading: 'Last name',
                      hintText: 'Please enter your last name',
                      maxLines: 1,
                      width: deviceWidth / 1.4,
                      controller: _lastNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Last name is required';
                        }
                      },
                    ),

                    const SizedBox(height: 15.0),

                    InputFormFiledWidget(
                      heading: 'Email',
                      hintText: 'Please enter your email address',
                      maxLines: 1,
                      width: deviceWidth / 1.4,
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                      },
                    ),

                    const SizedBox(height: 15.0),

                    InputFormFiledWidget(
                      heading: 'Phone number',
                      hintText: 'Please enter your phone number',
                      maxLines: 1,
                      width: deviceWidth / 1.4,
                      controller: _phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        }
                      },
                    ),

                    const SizedBox(height: 15.0),

                    InputFormFiledWidget(
                      heading: 'Message',
                      hintText: 'Please enter your message',
                      maxLines: 10,
                      width: deviceWidth / 1.4,
                      controller: _messageController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Message is required';
                        }
                      },
                    ),

                    const SizedBox(height: 25.0),

                    MaterialButton(
                      onPressed: () async {
                        final addData = AddDataFirestore();
                        if (formKey.currentState!.validate()) {
                          await addData.addResponse(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            email: _emailController.text,
                            phone: _phoneController.text,
                            message: _messageController.text,
                          );
                          formKey.currentState!.reset();
                          customShowDialog(context);
                        }
                      },
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

                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
