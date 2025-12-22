import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_widgets.dart';

class WhatIDoWidget extends StatelessWidget {
  const WhatIDoWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.text,
    this.subText, // اختياري
  });

  final String title;
  final String imagePath;
  final String text;
  final String? subText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.tealAccent, width: 2),
      ),
      shadowColor: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 200, width: 200),
            const SizedBox(height: 10),
            SansText(text: title, fontSize: 15, fontWeight: FontWeight.bold),
            const SizedBox(height: 5),
            SansText(text: text, fontSize: 12, fontWeight: FontWeight.normal),

            // 👇 يظهر فقط لو subText موجود
            if (subText != null && subText!.isNotEmpty)
              SansText(
                text: subText!,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
          ],
        ),
      ),
    );
  }
}
