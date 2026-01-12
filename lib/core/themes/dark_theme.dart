
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';


final ThemeData darkTheme= ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.secondary,
  scaffoldBackgroundColor: AppColors.background,
 appBarTheme: const AppBarTheme(
  elevation: 0,
  backgroundColor: AppColors.background,
  foregroundColor: Colors.white,
  centerTitle: true,
 ),
 textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white, displayColor: Colors.white),
);