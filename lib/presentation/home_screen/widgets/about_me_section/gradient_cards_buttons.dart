import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class GradientCardsButtons extends StatelessWidget {
  const GradientCardsButtons({super.key});

  Future<void> _downloadResume() async {
    final Uri uri = Uri.parse("assets/my_resume.pdf");

    try {
      await launchUrl(uri);
    } catch (e) {
      debugPrint("Error opening pdf: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      margin: EdgeInsets.only(top: isMobile ? 10 : 10),
      child: Material(
        // The button's base color
        color: const Color(0xFF262626).withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: () => _downloadResume(),
          borderRadius: BorderRadius.circular(5),
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,

          splashColor: Colors.white.withOpacity(0.05),

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: const Text(
              "Download Resume",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
