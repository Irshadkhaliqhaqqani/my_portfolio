import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/social_media_icons.dart';

class SocialMediaPlatformButtons extends StatelessWidget {
  const SocialMediaPlatformButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.7;
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      height: 60,
      width: isMobile ? width : 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusCircular),
        border: Border.all(color: Color.fromARGB(82, 120, 120, 120)),
        gradient: const LinearGradient(
          colors: [Color(0xFF1C1C1C), Color(0xFF171717)],
        ),

        boxShadow: [
          BoxShadow(
            color: Color(0xFF8B00B4).withOpacity(0.5),
            blurRadius: 20,
          
          ),
        ],
      ),
      // Buttonss
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialMediaIcons(imageUrl: 'assets/linkedin (1).png', OnTap: () {}),
          SocialMediaIcons(imageUrl: 'assets/social.png', OnTap: () {}),
          SocialMediaIcons(imageUrl: 'assets/facebook (1).png', OnTap: () {}),
          SocialMediaIcons(imageUrl: 'assets/instagram (1).png', OnTap: () {}),
        ],
      ),
    );
  }
}
