import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

class ContactTiles extends StatelessWidget {
  final String heading;
  final String bodyText;
  final String svgName;
  final String lastSvgName;
  const ContactTiles({
    super.key,
    required this.heading,
    required this.bodyText,
    required this.svgName,
    required this.lastSvgName,
  });
  
  @override
  Widget build(BuildContext context) {
    final isMobile=MediaQuery.of(context).size.width<800;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Icon
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset(
                svgName,
                height:isMobile?22: 30,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(width:isMobile?10: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize:isMobile?14: 16),
                ),
                Text(bodyText, style: TextStyle(color: AppColors.secondary)),
              ],
            ),
          ],
        ),
        
      ],
    );
  }
}
