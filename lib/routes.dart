import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_mobile_page.dart';
import 'package:portfolio/mobile/widget/contact_mobile.dart';
import 'package:portfolio/web/landing_web_page.dart';
import 'package:portfolio/web/widgets/contact_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingWebPage();
              } else {
                return LandingMobilePage();
              }
            },
          ),
          settings: settings,
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const ContactWeb();
              } else {
                return const ContactMobile();
              }
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingWebPage();
              } else {
                return LandingMobilePage();
              }
            },
          ),
        );
    }
  }
}
