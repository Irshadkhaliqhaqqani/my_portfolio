import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
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
          SizedBox(height: 80),
          // first side
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hero titles
              Text(
                "Hi' I am",
                style: TextStyle(fontSize: 18, color: AppColors.secondary),
              ),
              Text(AppStrings.PortfolioString, style: AppStyles.heading1),
              Text(
                "A Flutter Developer",
                style: TextStyle(fontSize: 18, color: AppColors.secondary),
              ),
            ],
          ),
          // second side
          MyProfileImage(),
          // Social Media Platforms
          SocialMediaPlatformButtons(),
        ],
      ),
      desktop: Padding(
        padding: const EdgeInsets.only(right: 80, top: 140, left: 80),
        child: Row(
          children: [
            // first side
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hero titles
                  Text(
                    "Hi' I am",
                    style: TextStyle(fontSize: 30, color: AppColors.secondary),
                  ),
                  Text(AppStrings.PortfolioString, style: AppStyles.heroText),
                  SizedBox(
                    height: 40,
                    child: DefaultTextStyle(
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 30,
                        color: AppColors.secondary,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "A Flutter Developer",
                            speed: const Duration(milliseconds: 150),
                            cursor: '|', // Now this property works!
                          ),
                          TypewriterAnimatedText(
                            "Dart Specialist",
                            speed: const Duration(milliseconds: 150),
                            cursor: '|', // Now this property works!
                          ),
                          TypewriterAnimatedText(
                            "Cross-Platform Apps",
                            speed: const Duration(milliseconds: 150),
                            cursor: '|', // Now this property works!
                          ),
                          TypewriterAnimatedText(
                            "Modern UI / UX",
                            speed: const Duration(milliseconds: 150),
                            cursor: '|', // Now this property works!
                          ),
                        ],
                        isRepeatingAnimation: false,
                        totalRepeatCount: 1,
                      ),
                    ),
                  ),
                  // Social Media Platforms
                  SocialMediaPlatformButtons(),
                ],
              ),
            ),

            // second side
            Expanded(
              flex: 5,
              child: Center(
                child: SizedBox(height: 500, child: MyProfileImage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
