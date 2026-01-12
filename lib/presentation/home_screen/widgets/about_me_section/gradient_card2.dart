import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_cards_buttons.dart';

Widget gradientCard2(BuildContext context, String text, Gradient gradient) {
  final isMobile = MediaQuery.of(context).size.width < 800;
  return ClipRRect(
    borderRadius: BorderRadius.circular(16),

    child: Stack(
      children: [
        // Backdrop Effect
        // Backdrop Blur
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.25), // required
          ),
        ),

        //Gradient
        Container(
          padding: EdgeInsets.only(left: isMobile ? 4 : 180),
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
                  "Skills",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: isMobile ? 10 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: isMobile ? 10 : 18,
                    color: AppColors.secondary,
                  ),
                ),
                isMobile ? SizedBox() : GradientCardsButtons(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
