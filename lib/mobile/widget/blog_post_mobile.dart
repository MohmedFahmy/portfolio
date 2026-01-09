import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class BlogPostMobile extends StatefulWidget {
  const BlogPostMobile({super.key, required this.title, required this.content});
  final String title;
  final String content;
  @override
  State<BlogPostMobile> createState() => _BlogPostMobileState();
}

class _BlogPostMobileState extends State<BlogPostMobile> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.0,
            color: Colors.black54,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: AbleCustomText(
                    text: widget.title,
                    size: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isExpand = !isExpand;
                    });
                  },
                  icon: Icon(
                    isExpand
                        ? Icons.arrow_drop_up_outlined
                        : Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Text(
              widget.content,
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: isExpand ? null : 3,
              overflow: isExpand ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
