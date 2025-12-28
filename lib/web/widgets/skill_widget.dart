import 'package:flutter/material.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key, required this.skill, required this.color});
  final String skill;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, style: BorderStyle.solid, width: 2.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: SansText(text: skill, fontSize: 16, fontWeight: FontWeight.normal),
    );
  }
}
