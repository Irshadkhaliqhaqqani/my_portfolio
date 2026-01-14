import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';

Widget textCard(String text, context) {
  final isMobile = MediaQuery.of(context).size.width < 800;
  return Container(
    width: isMobile ? double.infinity : MediaQuery.of(context).size.width * 0.4,
    child: Text(text, style: AppStyles.bodyText),
  );
}
