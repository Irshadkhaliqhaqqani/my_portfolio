import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';

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
    return ResponsiveLayout(
      mobile: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              // Title
              Text(
                "Experience",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "“1.5 Years of Hands-On Flutter Development”",
                style: AppStyles.bodyText,
              ),
              SizedBox(height: isMobile ? 20 : 50),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // First container → fixed 300 width
                    Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 20,
                                    sigmaY: 20,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(8),
                                      child: Image.asset(
                                        "assets/abstract_2.jfif",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              RotationTransition(
                                turns: _rotationController,
                                child: Image.asset(
                                  "assets/experience_circle.webp",
                                  height: isMobile ? 120 : 200,
                                  width: isMobile ? 120 : 200,
                                ),
                              ),
                              //Center Icon
                              Image.asset(
                                "assets/imageflutter_2.webp",
                                height: isMobile ? 80 : 120,
                                width: isMobile ? 80 : 120,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: isMobile ? 0 : 20),
                    // Second container → text content
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppSizes.radiusSmall,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isMobile ? 14 : 16,
                            ),
                          ),
                          Text(
                            "Software Technology Park, Skardu",
                            style: AppStyles.bodyText,
                          ),
                          Text("2023 Present", style: AppStyles.bodyText),
                          Text(
                            "• Built and delivered real-world mobile applications for local clients\n"
                            "• Worked on production-level Flutter apps from UI to deployment\n"
                            "• Collaborated with clients to understand requirements and improve usability",
                            style: AppStyles.bodyText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: isMobile ? 20 : 100),
            ],
          ),
        ),
      ),
      desktop: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              // Title
              Text(
                "Experience",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "“1.5 Years of Hands-On Flutter Development”",
                style: AppStyles.bodyText,
              ),
              SizedBox(height: 50),

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
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 20,
                                  sigmaY: 20,
                                ),
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
                              bottom: 100,
                              left: -100,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  RotationTransition(
                                    turns: _rotationController,
                                    child: Image.asset(
                                      "assets/experience_circle.webp",
                                      height: 200,
                                      width: 200,
                                    ),
                                  ),
                                  //Center Icon
                                  Image.asset(
                                    "assets/imageflutter_2.webp",
                                    height: 120,
                                    width: 120,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              // top: 45,
                              right: 40,
                              child: Image.asset(
                                "assets/experience_image.webp",
                                height: 300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: isMobile ? 0 : 20),
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
                          children: [
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Software Technology Park, Skardu",
                              style: AppStyles.bodyText,
                            ),
                            Text("2023 Present", style: AppStyles.bodyText),
                            Text(
                              "• Built and delivered real-world mobile applications for local clients\n"
                              "• Worked on production-level Flutter apps from UI to deployment\n"
                              "• Collaborated with clients to understand requirements and improve usability",
                              style: AppStyles.bodyText,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: isMobile ? 20 : 100),
            ],
          ),
        ),
      ),
    );
  }
}
