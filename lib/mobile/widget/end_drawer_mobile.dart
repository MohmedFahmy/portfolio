import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components.dart';

Drawer endMobileDrawer() {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DrawerHeader(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Image.asset(
              'assets/cropped_circle_image.png',
              filterQuality: FilterQuality.high,
            ),
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
                await launchUrl(Uri.parse('https://github.com/MohmedFahmy'));
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
  );
}
