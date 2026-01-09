import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCardWidget extends StatelessWidget {
  const WorkCardWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
    required this.githubUrl,
  });

  final String title;
  final String imagePath;
  final String description;
  final String githubUrl;

  /// ينزل سطر جديد بعد النقطة فقط
  List<String> _splitDescription(String text) {
    return text.split('.').where((line) => line.trim().isNotEmpty).toList();
  }

  @override
  Widget build(BuildContext context) {
    final lines = _splitDescription(description);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /// Image
            Container(
              width: 350,
              height: 260,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.tealAccent, width: 1),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),

            const SizedBox(width: 40),

            /// Text Content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(
                  title,
                  softWrap: false,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10.0),

                /// Description (line by line after dot only)
                ...lines.map(
                  (line) => Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      line.trim(),
                      softWrap: false,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25.0),

                /// GitHub link
                InkWell(
                  onTap: () async {
                    final uri = Uri.parse(githubUrl);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    }
                  },
                  child: const Text(
                    'View Project on GitHub',
                    softWrap: false,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
