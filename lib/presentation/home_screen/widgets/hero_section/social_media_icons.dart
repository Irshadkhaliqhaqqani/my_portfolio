import 'package:flutter/material.dart';

class SocialMediaIcons extends StatefulWidget {
  final String imageUrl;
  final VoidCallback OnTap;

  const SocialMediaIcons({
    super.key,
    required this.imageUrl,
    required this.OnTap,
  });

  @override
  State<SocialMediaIcons> createState() => _SocialMediaIconsState();
}

class _SocialMediaIconsState extends State<SocialMediaIcons> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // 1. Detect Hover
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,

      child: GestureDetector(
        onTap: widget.OnTap,

        // 2. Animate the container
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(8),
          height: 50, // Fixed height for consistent scaling
          width: 50,

          // 3. Scale Effect: Zoom in by 20% on hover
          transform: Matrix4.identity()..scale(isHovered ? 1.1 : 1.0),
          transformAlignment: Alignment.center,

          decoration: BoxDecoration(
            color: const Color(0xFF262626), // Your original background
            shape: BoxShape.circle,

            // 4. Border Effect: Change to Purple on hover
            border: Border.all(
              color: isHovered
                  ? const Color(0xFF8B00B4) // Purple when hovered
                  : const Color(0xFF3C3C3C), // Grey default
              width: 1.5,
            ),

            // 5. Glow Effect: Add purple shadow on hover
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: const Color(0xFF8B00B4).withOpacity(0.6),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ]
                : [],
          ),

          child: Image.asset(
            widget.imageUrl,
            fit: BoxFit.contain,
            // Optional: You can make the icon white on hover if you want
            // color: isHovered ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
