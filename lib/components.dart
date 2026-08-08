import 'package:cloud_firestore/cloud_firestore.dart';
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
              : GoogleFonts.roboto(color: Colors.grey.shade900, fontSize: 18.0),
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

// Blog Web and Mobile  text widget
class AbleCustomText extends StatelessWidget {
  const AbleCustomText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.fontWeight,
  });
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class AddDataFirestore {
  CollectionReference responses = FirebaseFirestore.instance.collection(
    'messages',
  );
  Future<void> addResponse({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String message,
  }) {
    return responses
        .add({
          'first name': firstName,
          'last name': lastName,
          'email': email,
          'phone': phone,
          'message': message,
          'timestamp': FieldValue.serverTimestamp(),
        })
        .then((value) => print('Response added'))
        .catchError((error) => print('Failed to add response: $error'));
  }
}

Future<dynamic> customShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: Text('Success'),
        content: Text('Your message has been sent.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
