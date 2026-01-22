import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_cards_buttons.dart';

Widget GradientCard2(BuildContext context, String text, Gradient gradient) {
  final isMobile = MediaQuery.of(context).size.width < 800;
  return Container(
    width: isMobile ? double.infinity : MediaQuery.of(context).size.width * 0.4,
    height: isMobile ? null : 250,
    padding: EdgeInsets.only(
      left: isMobile ? 20 : 200,
      top: isMobile ? 20 : 0,
      right: isMobile ? 20 : 0,
      bottom: isMobile ? 20 : 0,
    ),
    decoration: BoxDecoration(
      // gradient: gradient,
      borderRadius: BorderRadius.circular(isMobile ? 8 : 16),
      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Skills",
          style: TextStyle(
            height: 1.5,
            fontSize: isMobile ? 12 : 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, style: AppStyles.bodyText),
        SizedBox(height: 5),
        GradientCardsButtons(),
      ],
    ),
  );
}
