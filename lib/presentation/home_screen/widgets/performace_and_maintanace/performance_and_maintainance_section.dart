import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';

class PerformanceAndMaintainanceSection extends StatelessWidget {
  const PerformanceAndMaintainanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return ResponsiveLayout(
      mobile: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
        child: Container(
          constraints: BoxConstraints(maxWidth: 1140),
          child: Column(
            children: [
              // Title
              Text(
                textAlign: TextAlign.center,
                "Performance & Maintenance",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "“Reliable apps built for speed, stability, and long-term success.”",
                style: TextStyle(color: AppColors.secondary),
              ),
              SizedBox(height: 20),
              // Contnaner
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSizes.radiusMedium,
                      ),
                      child: Image.asset(
                        "assets/background_vector.jpg",
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // main Contaner
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    // Back Drop Effect
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSizes.radiusMedium,
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(
                              AppSizes.radiusMedium,
                            ),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Mobile Image
                  Positioned.fill(
                    bottom: 21,
                    child: Image.asset("assets/iphone_image.png", height: 280),
                  ),

                  // Right Content
                ],
              ),
              SizedBox(height: 5),
              // Left Content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "App Performance",
                    style: TextStyle(
                      height: isMobile ? 0 : 1.5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "I build high-performance applications optimized for speed, responsiveness, and scalability across all devices.",
                    style: TextStyle(
                      height: isMobile ? 0 : 1.5,
                      fontSize: isMobile ? 12 : 14,
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "App Maintenance",
                    style: TextStyle(
                      height: isMobile ? 0 : 1.5,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "I build high-performance applications optimized for speed, responsiveness, and scalability across all devices.",
                    style: TextStyle(
                      height: isMobile ? 0 : 1.5,
                      fontSize: isMobile ? 12 : 14,
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
      desktop: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
        child: Container(
          constraints: BoxConstraints(maxWidth: 1140),
          child: Column(
            children: [
              // Title
              Text(
                "Performance & Maintenance",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "“Reliable apps built for speed, stability, and long-term success.”",
                style: TextStyle(color: AppColors.secondary),
              ),
              SizedBox(height: 20),

              // Contnaner
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSizes.radiusMedium,
                      ),
                      child: Image.asset(
                        "assets/background_vector.jpg",
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // main Contaner
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    // Back Drop Effect
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppSizes.radiusMedium,
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(
                              AppSizes.radiusMedium,
                            ),
                            border: Border.all(color: Colors.grey, width: 0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Left Content
                  Positioned(
                    top: 130,
                    left: 20,
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "App Performance",
                            style: TextStyle(
                              height: isMobile ? 0 : 1.5,
                              fontSize: isMobile ? 12 : 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "I build high-performance applications optimized for speed, responsiveness, and scalability across all devices.",
                            style: TextStyle(
                              height: isMobile ? 0 : 1.5,
                              fontSize: isMobile ? 12 : 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Right
                  Positioned(
                    top: 130,
                    right: 20,
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "App Maintenance",
                            style: TextStyle(
                              height: isMobile ? 0 : 1.5,
                              fontSize: isMobile ? 12 : 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "I build high-performance applications optimized for speed, responsiveness, and scalability across all devices.",
                            style: TextStyle(
                              height: isMobile ? 0 : 1.5,
                              fontSize: isMobile ? 12 : 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Mobile Image
                  Positioned.fill(
                    bottom: 21,

                    child: Image.asset("assets/iphone_image.png", height: 350),
                  ),

                  // Right Content
                ],
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
