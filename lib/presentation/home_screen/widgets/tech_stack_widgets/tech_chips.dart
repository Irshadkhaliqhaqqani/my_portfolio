import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';

class TechChips extends StatelessWidget {
  final String svgPicture;
  final String iconText;
  const TechChips({
    super.key,
    required this.iconText,
    required this.svgPicture,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        gradient: LinearGradient(
          colors: [Color(0xFF363636), Color(0xFF2E2E2E)],
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // SVG
          SvgPicture.asset(
            svgPicture,
            colorFilter: const ColorFilter.mode(Colors.cyan, BlendMode.srcIn),
            width: isMobile ? 15 : 22,
          ),
          SizedBox(width: 5),
          // Text
          Text(iconText, style: AppStyles.bodyText),
        ],
      ),
    );
  }
}
