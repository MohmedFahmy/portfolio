import 'package:flutter/material.dart';
import 'package:portfolio/web/widgets/web_drawer.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
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
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  '/works.jpg',
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
                  TabsWeb(title: 'Works', route: '/work'),
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
        body: ListView(),
      ),
    );
  }
}
