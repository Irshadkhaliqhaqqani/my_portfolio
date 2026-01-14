import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';

Widget textCard(String text, context) {
  final isMobile = MediaQuery.of(context).size.width < 800;
  return Padding(
    padding: EdgeInsets.only(left: isMobile ? 0 : 16, right: isMobile ? 5 : 50),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          height: 1.5,
          fontSize: isMobile ? 12 : 15,
          color: AppColors.secondary,
        ),
      ),
    ),
  );
}
