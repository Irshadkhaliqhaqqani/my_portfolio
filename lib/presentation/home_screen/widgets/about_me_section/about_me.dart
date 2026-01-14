import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/my_grid_view.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "About me",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "“If you are not going to tell the world who you are, the world is not going to tell you, how good you are.”",
              style: TextStyle(color: AppColors.secondary),
            ),
            SizedBox(height: 10),
            // Image
            Image.asset(
              "assets/iosphone.webp",
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            // stack for About me Container
            MyGridView(),
            SizedBox(height: 20),
          ],
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: SizedBox(
          height: 800,
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                "About me",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "“If you are not going to tell the world \nwho you are, the world is not going to tell you, how good you are.”",
                style: TextStyle(color: AppColors.secondary),
              ),
              SizedBox(height: 50),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  // glow circles
                  Positioned(child: _GlowCircle()),
                  MyGridView(),
                  Positioned(
                    top: -50,
                    child: Image.asset(
                      "assets/iosphone.webp",
                      height: 650,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GlowCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8B00B4).withOpacity(0.4),
            blurRadius: 150,
            spreadRadius: 10,
          ),
        ],
      ),
    );
  }
}
