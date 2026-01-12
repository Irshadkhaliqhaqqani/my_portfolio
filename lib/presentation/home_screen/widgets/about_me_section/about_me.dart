import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/my_grid_view.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Column(
        children: [
          Text(
            "About me",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "“If you are not going to tell the world who you are, the world is not going to tell you, how good you are.”",
            style: TextStyle(color: AppColors.secondary),
          ),
          // stack for About me Container
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // Contaner

              // GridView
              MyGridView(),
              // Image
              Image.asset(
                "assets/iosphone.png",
                height: 200,
                fit: BoxFit.contain,
                // cacheWidth: 100,
              ),

              // Conatner
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1140
          ),
          child: Column(
            children: [
              Text(
                "About me",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "“If you are not going to tell the world who you are, the world is not going to tell you, how good you are.”",
                style: TextStyle(color: AppColors.secondary),
              ),
              // stack for About me Container
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: -300,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF8B00B4).withOpacity(0.4),
                            spreadRadius:
                                10, // How much the shadow grows larger than the box
                            blurRadius: 150, // How soft the shadow edge is
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -300,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF8B00B4).withOpacity(0.4),
                            spreadRadius:
                                10, // How much the shadow grows larger than the box
                            blurRadius: 150, // How soft the shadow edge is
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // GridView
                  MyGridView(),
                  // Image
                  Image.asset(
                    "assets/iosphone.png",
                    height: 750,
                    fit: BoxFit.contain,
                    // cacheWidth: 100,
                  ),
                  // Conatner
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
