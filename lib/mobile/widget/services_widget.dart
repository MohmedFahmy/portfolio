import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
    required this.title,
    required this.imagePath,
    required this.descriptions,
    this.imageFirst = true,
  });

  final String title;
  final String imagePath;
  final List<String> descriptions;
  final bool imageFirst;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    final imageWidget = Container(
      padding: const EdgeInsets.all(20.0),
      width: 270,
      height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.tealAccent),
      ),
      child: Image.asset(imagePath),
    );

    final textWidget = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...descriptions.map(
            (text) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(text, style: const TextStyle(fontSize: 15)),
            ),
          ),
        ],
      ),
    );

    /// 📱 Mobile → Column
    if (isMobile) {
      return Column(
        children: [imageWidget, const SizedBox(height: 35.0), textWidget],
      );
    }

    /// 🖥️ Web → Row
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: imageFirst
          ? [imageWidget, textWidget]
          : [textWidget, imageWidget],
    );
  }
}
