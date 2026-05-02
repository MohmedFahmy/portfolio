import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/mobile/widget/blog_post_mobile.dart';
import 'package:portfolio/mobile/widget/end_drawer_mobile.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  void streamArticles() async {
    await for (var snapshot
        in FirebaseFirestore.instance.collection('articles').snapshots()) {
      for (var title in snapshot.docs) {
        print(title.data()['title']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
                    'assets/main.jpeg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                expandedHeight: 400.0,
              ),
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('articles')
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    DocumentSnapshot doc = snapshot.data!.docs[index];
                    return BlogPostMobile(
                      title: doc['title'],
                      content: doc['body'],
                    );
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
