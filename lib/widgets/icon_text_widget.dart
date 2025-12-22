import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_widgets.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        SansText(text: text, fontSize: 15, fontWeight: FontWeight.normal),
      ],
    );
  }
}
