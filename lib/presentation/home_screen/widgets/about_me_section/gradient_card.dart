import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_cards_buttons.dart';

Widget gradientCard(BuildContext context, String text, Gradient gradient) {
  final isMobile = MediaQuery.of(context).size.width < 800;

  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Stack(
      children: [
        // Backgdrop Effect
        // Backdrop Blur
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.25), // required
          ),
        ),

        // Gradient Card
        Container(
          padding: EdgeInsets.only(
            left: isMobile ? 2 : 20,
            right: isMobile ? 2 : 200,
          ),
          decoration: BoxDecoration(
            // gradient: gradient,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Education",
                  style: TextStyle(
                    height: isMobile ? 0 : 1.5,
                    fontSize: isMobile ? 12 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    height: isMobile ? 0 : 1.5,
                    fontSize: isMobile ? 12 : 18,
                    color: AppColors.secondary,
                  ),
                ),
                GradientCardsButtons(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
