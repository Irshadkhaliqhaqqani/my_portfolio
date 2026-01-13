import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

class ExperienceSection extends StatefulWidget {
  const ExperienceSection({super.key});

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection>
    with SingleTickerProviderStateMixin {
  // Controller
  late AnimationController _rotationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _rotationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _rotationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 0),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
          maxWidth: 1140
          ),
          child: Column(
            mainAxisAlignment: .center,
          
            children: [
              // Title
              Text(
                "Experience",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "“1.5 Years of Hands-On Flutter Development”",
                style: TextStyle(color: AppColors.secondary),
              ),
              SizedBox(height:isMobile?20: 50),
          
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First container → fixed 300 width
                    Expanded(
                      child: Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                child: Container(
                                  // width: 220,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/abstract_2.jfif",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom:isMobile?150: 100,
                              left:isMobile?10: -100,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  RotationTransition(
                                    turns: _rotationController,
                                    child: Image.asset(
                                      "assets/experience_circle.png",
                                      height:isMobile?120: 200,
                                      width: isMobile?120: 200,
                                    ),
                                  ),
                                  //Center Icon
                                  Image.asset(
                                    "assets/imageflutter_2.png",
                                    height:isMobile?80: 120,
                                    width: isMobile?80: 120,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 45,
                              right: 40,
                              child: Image.asset("assets/experience_image.png", height: 300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width:isMobile?0: 20),
                    // Second container → text content
                    Expanded(
                      child: Container(
                        height: 400,
                        padding: const EdgeInsets.only(left: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusSmall,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Text(
                              "Flutter Developer",
                              style: TextStyle(fontSize:isMobile?18: 35),
                            ),
                            Text(
                              "Software Technology Park, Skardu",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.secondary,
                              ),
                            ),
                            Text(
                              "2023 Present",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.secondary,
                              ),
                            ),
                            Text(
                              "• Built and delivered real-world mobile applications for local clients\n"
                              "• Worked on production-level Flutter apps from UI to deployment\n"
                              "• Collaborated with clients to understand requirements and improve usability",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height:isMobile?20: 100),
            ],
          ),
        ),
      ),
    );
  }
}
