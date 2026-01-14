import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:my_new_portfolio/core/constraints/app_styles.dart';

class GradientCardsButtons extends StatelessWidget {
  const GradientCardsButtons({super.key});

  // download resume method
  void _downloadResume() {
    final url = "web/irshadkhaliqhaqqani_cv.pdf";
    html.AnchorElement anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "irshadkhaliqhaqqani_cv.pdf")
      ..click();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return InkWell(
      onTap: _downloadResume,
      child: Container(
        margin: EdgeInsets.only(top: isMobile ? 10 : 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFF262626).withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text("Download Resume", style: AppStyles.bodyText),
      ),
    );
  }
}
