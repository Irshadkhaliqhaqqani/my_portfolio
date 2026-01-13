import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/project_section/projects_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:isMobile?20: 80),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 1140
        ),
        child: Column(
          children: [
            // Title
            Text(
              "Projects",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center
        ,            "“A selection of real world applications I’ve built using Flutter”",
              style: TextStyle(color: AppColors.secondary),
            ),
        
            // Project Cards Curosals
            Stack(
              children: [
               isMobile? SizedBox(): Positioned.fill(
                  child: Container(
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
                ),
        
                CarouselSlider(
                  items: [
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p1.jpg',
                      cardHeader: 'Food Delivery App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p2.jpg',
                      cardHeader: 'Wallpaper App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p4.jpg',
                      cardHeader: 'Old Book Selling App',
                      OnTap: () {},
                    ),
                    ProjectsCard(
                      imageUrl: 'assets/Projects_images/p5.jpg',
                      cardHeader: 'Chat App',
                      OnTap: () {},
                    ),
                  ],
                  options: CarouselOptions(
                    height:isMobile?250: 500,
                    viewportFraction:isMobile?0.35:  0.25,
                    enlargeCenterPage: true,
                    enlargeFactor:isMobile?0.3: 0.15,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeOutCubic,
                  ),
                ),
              ],
            ),
        
            // See More
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "See More",
                    style: TextStyle(fontSize: 13, color: AppColors.secondary),
                  ),
                  Divider(
                    thickness: 1.5,
                    color: AppColors.secondary,
                    indent: screenWidth * 0.40,
                    endIndent: screenWidth * 0.40,
                  ),
                ],
              ),
            ),
            SizedBox(height:isMobile?10 :50),
          ],
        ),
      ),
    );
  }
}
