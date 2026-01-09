import 'package:flutter/material.dart';
import 'package:portfolio/web/widgets/web_drawer.dart';

import '../components.dart';
import '../mobile/widget/blog_post_mobile.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        drawer: webDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black, size: 35),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: AbleCustomText(
                      text: 'Welcome to my blog',
                      size: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset(
                    'assets/blog.jpg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                expandedHeight: 400.0,
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
          body: ListView(
            children: [
              BlogPostMobile(
                title: 'Who is Lorem Ipsum',
                content:
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
              BlogPostMobile(
                title: 'The History of Lorem Ipsum',
                content:
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
              BlogPostMobile(
                title: 'Why do we use Lorem Ipsum',
                content:
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
