import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_strings.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/my_profile_image.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/social_media_platform_buttons.dart';

class MyHeroSection extends StatelessWidget {
  const MyHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Column(
        children: [
          // first side
          SizedBox(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Hero titles
                Text(
                  "Hi' I am",
                  style: TextStyle(fontSize: 22, color: AppColors.secondary),
                ),
                Text(AppStrings.PortfolioString, style: AppStyles.heading1),
                Text(
                  "A Flutter Developer",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.secondary,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          // second side
          SizedBox(height: 250, child: MyProfileImage()),
          // Social Media Platforms
          SocialMediaPlatformButtons(),
        ],
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1140
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // first side
              SizedBox(
                height: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Hero titles
                    Text(
                      "Hi' I am",
                      style: TextStyle(fontSize: 42, color: AppColors.secondary),
                    ),
                    Text(AppStrings.PortfolioString, style: AppStyles.heroText),
                    Text(
                      "A Flutter Developer",
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.secondary,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    // Social Media Platforms
                    SocialMediaPlatformButtons(),
                  ],
                ),
              ),
              // second side
              
              // SizedBox(height: 700, child: MyProfileImage()),
              Container(height: 650,width: 700,child:Center(child: MyProfileImage()) ,)
            ],
          ),
        ),
      ),
    );
  }
}
