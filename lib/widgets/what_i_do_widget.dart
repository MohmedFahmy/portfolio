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

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({
    super.key,
    required this.imagePath,
    required this.text,
    required this.fit,
    required this.reverse,
    required this.title,
  });

  final String imagePath;
  final String title;
  final String text;
  final BoxFit fit;
  final bool reverse;

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: widget.reverse == true ? Offset(0.0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0.0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
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
              Image.asset(
                widget.imagePath,
                height: 200,
                width: 200,
                fit: widget.fit == null ? null : widget.fit,
              ),
              const SizedBox(height: 10),
              SansText(
                text: widget.title,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              SansText(
                text: widget.text,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
