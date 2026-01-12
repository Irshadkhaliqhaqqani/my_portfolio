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
    required this.cardHeader, required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 24),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
            child: AspectRatio(
              aspectRatio: 10 / 14,
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.radiusMedium),

              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.8), Colors.transparent],
              ),
            ),
            child: GestureDetector(
              onTap: OnTap,
              child: Container(
                padding: EdgeInsets.all(5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),"assets/svgs/github-brands-solid-full.svg")
              ),
            ),
          ),
        ),
      ],
    );
  }
}
