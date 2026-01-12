import 'dart:ui'; // Required for ImageFilter
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const GlassBox({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // 1. Controls the corner roundness
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            // 2. The Blur Effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0, // Control horizontal blur strength
                sigmaY: 5.0, // Control vertical blur strength
              ),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  // 3. The semi-transparent tint (adjust opacity for more/less darkness)
                  color: Colors.white.withOpacity(0.1), 
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2), // Optional: Glass border
                  ),
                ),
              ),
            ),
            // 4. Your actual content (Text, Icons, etc.)
            Center(child: child), 
          ],
        ),
      ),
    );
  }
}