import 'package:flutter/material.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';
import 'package:portfolio/mobile/widget/work_mobile_widget.dart';

import '../web/widgets/text_widgets.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
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
                  'assets/works.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              expandedHeight: 400.0,
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50.0),
                SansText(
                  text: 'Works',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 40.0),
                WorkMobileWidget(
                  title: 'Portfolio',
                  imagePath: 'assets/portfolio.png',
                  description:
                      'A professional portfolio showcasing real-world projects and skills. '
                      'Developed with Flutter for Web, Android, and iOS. '
                      'Focused on performance, clean architecture, and modern UI. ',
                  githubUrl: 'https://github.com/MohmedFahmy/portfolio.git',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
