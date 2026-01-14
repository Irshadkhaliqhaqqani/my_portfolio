import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

class ProjectsCard extends StatelessWidget {
  final String imageUrl;
  final String cardHeader;
  final VoidCallback OnTap;

  const ProjectsCard({
    super.key,
    required this.imageUrl,
    required this.cardHeader,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 10 / 14,
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: OnTap,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                      "assets/svgs/github-brands-solid-full.svg",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
