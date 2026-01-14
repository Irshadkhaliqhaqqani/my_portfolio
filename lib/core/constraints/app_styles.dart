import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

class AppStyles {
  // Headings
  static const TextStyle heroText = TextStyle(
    fontSize: AppSizes.fontPower,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle heading1 = TextStyle(
    fontSize: AppSizes.fontExtraLarge,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle heading2 = TextStyle(
    fontSize: AppSizes.fontLarge,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle heading3 = TextStyle(
    fontSize: AppSizes.fontMedium,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // Body Text
  static TextStyle bodyText = GoogleFonts.inter(
    fontSize: AppSizes.fontMedium,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );
}
