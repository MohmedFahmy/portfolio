import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkMobileWidget extends StatelessWidget {
  const WorkMobileWidget({
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
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: Container(
        width: double.infinity,
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Image
            Center(
              child: Container(
                width: width / 1.3,
                height: 250,
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
            ),

            const SizedBox(height: 25.0),

            /// Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            /// Description
            ...lines.map(
              (line) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  line.trim(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    height: 1.2,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// GitHub Link
            InkWell(
              onTap: () async {
                final uri = Uri.parse(githubUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              child: const Text(
                'View Project on GitHub',
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
      ),
    );
  }
}
