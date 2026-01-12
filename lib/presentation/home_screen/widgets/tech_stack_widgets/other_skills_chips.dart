import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class OtherSkillsChips extends StatelessWidget {
  final String svgPictures;
  final String iconTexts;
  const OtherSkillsChips({
    super.key,
    required this.iconTexts,
    required this.svgPictures,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile= MediaQuery.of(context).size.width<800;
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
            svgPictures,
            colorFilter: const ColorFilter.mode(Colors.cyan, BlendMode.srcIn),
            width:isMobile?15: 22,
          ),
          SizedBox(width: 5),
          // Text
          Text(iconTexts, style: TextStyle(fontSize: isMobile?10:14), ),
        ],
      ),
    );
  }
}
