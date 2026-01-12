import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';


Widget textCard2(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 200),
    child: Center(
      child: Text(
        text,
        style: TextStyle(height: 1.5, fontSize: 15, color: AppColors.secondary),
      ),
    ),
  );
}
