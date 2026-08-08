import 'package:flutter/material.dart';
import 'package:portfolio/mobile/screens/about_mobile.dart';
import 'package:portfolio/mobile/screens/blog_mobile.dart';
import 'package:portfolio/mobile/screens/contact_mobile.dart';
import 'package:portfolio/mobile/screens/landing_mobile_page.dart';
import 'package:portfolio/mobile/works_mobile.dart';
import 'package:portfolio/web/screens/about_web.dart';
import 'package:portfolio/web/screens/blog_web.dart';
import 'package:portfolio/web/screens/contact_web.dart';
import 'package:portfolio/web/screens/landing_web_page.dart';
import 'package:portfolio/web/screens/works_web.dart';

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
      case '/work':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return WorksWeb();
              } else {
                return WorksMobile();
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
