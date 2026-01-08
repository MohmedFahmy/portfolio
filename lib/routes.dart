import 'package:flutter/material.dart';
import 'package:portfolio/mobile/about_mobile.dart';
import 'package:portfolio/mobile/blog_mobile.dart';
import 'package:portfolio/mobile/contact_mobile.dart';
import 'package:portfolio/mobile/landing_mobile_page.dart';
import 'package:portfolio/web/about_web.dart';
import 'package:portfolio/web/blog_web.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_web_page.dart';

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
                return ContactWeb();
              } else {
                return ContactMobile();
              }
            },
          ),
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return AboutWeb();
              } else {
                return AboutMobile();
              }
            },
          ),
          settings: settings,
        );
      case '/blog':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return BlogWeb();
              } else {
                return BlogMobile();
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
