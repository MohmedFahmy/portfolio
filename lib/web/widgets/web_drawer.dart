import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer webDrawer() {
  return Drawer(
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
  );
}

urlLauncher(String imgPath, String url) {
  return IconButton(
    icon: SvgPicture.asset(imgPath, width: 35),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}
