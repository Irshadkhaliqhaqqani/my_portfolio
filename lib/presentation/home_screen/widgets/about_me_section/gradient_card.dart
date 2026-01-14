import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_cards_buttons.dart';

Widget gradientCard(BuildContext context, String text, Gradient gradient) {
  final isMobile = MediaQuery.of(context).size.width < 800;

  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Container(
      padding: EdgeInsets.all(isMobile ? 10 : 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(16),
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
          Text(
            text,
            style: TextStyle(
              fontSize: isMobile ? 12 : 15,
              color: AppColors.secondary,
              height: 1.5,
            ),
          ),
          if (!isMobile) const SizedBox(height: 12),
          if (isMobile) GradientCardsButtons(),
        ],
      ),
    ),
  );
}
