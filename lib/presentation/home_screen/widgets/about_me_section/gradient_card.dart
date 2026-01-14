import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_cards_buttons.dart';

Widget gradientCard(BuildContext context, String text, Gradient gradient) {
  final isMobile = MediaQuery.of(context).size.width < 800;

  return Container(
    width: isMobile ? double.infinity : MediaQuery.of(context).size.width * 0.4,
    height: isMobile ? null : 250,
    padding: EdgeInsets.all(isMobile ? 20 : 20),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.25),
      borderRadius: BorderRadius.circular(isMobile ? 8 : 16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Education",
          style: TextStyle(
            fontSize: isMobile ? 12 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(text, style: AppStyles.bodyText),
        if (!isMobile) const SizedBox(height: 12),
        if (isMobile) GradientCardsButtons(),
      ],
    ),
  );
}
