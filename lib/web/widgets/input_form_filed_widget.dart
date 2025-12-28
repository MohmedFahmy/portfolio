import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/web/widgets/text_widgets.dart';

class InputFormFiledWidget extends StatelessWidget {
  const InputFormFiledWidget({
    super.key,
    required this.heading,
    required this.hintText,
    required this.maxLines,
    required this.width,
  });
  final String heading;
  final String hintText;
  final int maxLines;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SansText(text: heading, fontSize: 16, fontWeight: FontWeight.normal),
        SizedBox(height: 5),
        SizedBox(
          width: width,
          child: TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(200),
            //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
            // ],
            // validator: (text) {
            //   if (RegExp(
            //     '\\bmohamed\\b',
            //     caseSensitive: false,
            //   ).hasMatch(text.toString())) {
            //     return 'The name "mohamed" is not allowed.';
            //   }
            // },
            maxLines: maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.teal),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red, width: 2.0),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}
