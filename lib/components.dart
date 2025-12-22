import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb(this.title, {super.key});
  final String title;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (event) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.roboto(
                shadows: [Shadow(offset: Offset(0, -4), color: Colors.black)],
                color: Colors.transparent,
                fontSize: 22.0,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.roboto(color: Colors.grey.shade600, fontSize: 18.0),
        child: Text(widget.title),
      ),
    );
  }
}
