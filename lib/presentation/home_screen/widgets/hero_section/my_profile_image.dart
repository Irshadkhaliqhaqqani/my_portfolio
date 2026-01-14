import 'package:flutter/material.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return SizedBox(
      width: isMobile ? 260 : 420,
      height: isMobile ? 320 : 600,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Glow circle
          Positioned(
            top: isMobile ? 60 : 80,
            child: Container(
              height: isMobile ? 200 : 320,
              width: isMobile ? 200 : 320,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF8B00B4),
                    spreadRadius: 30,
                    blurRadius: 180,
                  ),
                ],
              ),
            ),
          ),

          // Background image
          Positioned(
            top: isMobile ? 40 : 60,
            child: Image.asset(
              "assets/hero_image_2.webp",
              height: isMobile ? 200 : 340,
              fit: BoxFit.contain,
            ),
          ),

          // Main profile image
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/my_image.webp",
              height: isMobile ? 260 : 480,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
