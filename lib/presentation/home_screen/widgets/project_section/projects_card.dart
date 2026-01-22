import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:my_new_portfolio/core/constraints/app_sizes.dart'; // Uncomment in your project

class ProjectsCard extends StatelessWidget {
  final String imageUrl;
  final String cardHeader;
  final VoidCallback onTap; // Renamed to camelCase

  const ProjectsCard({
    super.key,
    required this.imageUrl,
    required this.cardHeader,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15), // Using hardcoded for demo
        child: Stack(
          fit:
              StackFit.expand, // Ensures the stack fills the carousel item area
          children: [
            // 1. Background Image
            Image.asset(
              imageUrl,
              fit: BoxFit
                  .cover, // Ensures image covers entire area without distortion
            ),

            // 2. Gradient Overlay (Bottom Fade)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height:
                  120, // Give the gradient a dedicated height for readability
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                  ),
                ),
              ),
            ),

            // 3. Content (Text + Button)
            Positioned(
              left: 12,
              right: 12,
              bottom: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Github Button
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(
                        10,
                      ), // Increased padding for smaller icon look
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        "assets/svgs/github-brands-solid-full.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
