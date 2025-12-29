import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb({super.key, required this.title, required this.route});
  final String title;
  final String route;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
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
      ),
    );
  }
}

// Mobile Tabs Widget
class TabsMobil extends StatefulWidget {
  const TabsMobil({super.key, required this.title, required this.route});
  final String title;
  final String route;
  @override
  State<TabsMobil> createState() => _TabsMobilState();
}

class _TabsMobilState extends State<TabsMobil> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      elevation: 20.0,
      height: 50.0,
      minWidth: 200.0,
      color: Colors.blueGrey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        widget.title,
        style: GoogleFonts.openSans(color: Colors.white, fontSize: 20.0),
      ),
    );
  }
}
