import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'projects_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
      child: Column(
        children: [
          // Section Title
          const Text(
            "Projects",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            "“A selection of real-world applications I’ve built using Flutter”",
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.secondary),
          ),
          const SizedBox(height: 30),

          // Carousel Slider
          SizedBox(
            height: isMobile ? 280 : 400,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF8B00B4).withOpacity(0.5),
                        spreadRadius:
                            10, // How much the shadow grows larger than the box
                        blurRadius: 150, // How soft the shadow edge is
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),

                CarouselSlider(
                  items: [
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p1.webp',
                      cardHeader: 'Food Delivery App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p2.webp',
                      cardHeader: 'Wallpaper App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p4.webp',
                      cardHeader: 'Old Book Selling App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p5.webp',
                      cardHeader: 'Chat App',
                      OnTap: () {},
                    ),
                  ],
                  options: CarouselOptions(
                    height: isMobile ? 250 : 500,
                    viewportFraction: isMobile ? 0.45 : 0.25,
                    enlargeCenterPage: true,
                    enlargeFactor: isMobile ? 0.3 : 0.22,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeOutCubic,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // See More Section
          Column(
            children: [
              const Text(
                "See More",
                style: TextStyle(fontSize: 13, color: AppColors.secondary),
              ),
              Divider(
                thickness: 1.5,
                color: AppColors.secondary,
                indent: screenWidth * 0.4,
                endIndent: screenWidth * 0.4,
              ),
            ],
          ),
          SizedBox(height: isMobile ? 20 : 50),
        ],
      ),
    );
  }
}
