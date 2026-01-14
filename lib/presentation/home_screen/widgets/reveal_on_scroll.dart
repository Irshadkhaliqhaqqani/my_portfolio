import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class RevealOnScroll extends StatefulWidget {
  final Widget child;

  const RevealOnScroll({super.key, required this.child});

  @override
  State<RevealOnScroll> createState() => _RevealOnScrollState();
}

class _RevealOnScrollState extends State<RevealOnScroll> {
  // Controls the animation state
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      // Key is required by VisibilityDetector to identify the widget
      key: Key(widget.child.hashCode.toString()),
      onVisibilityChanged: (info) {
        // If more than 10% of the widget is visible and we haven't animated yet...
        if (info.visibleFraction > 0.1 && !_isVisible) {
          setState(() {
            _isVisible = true; // Trigger the animation
          });
        }
      },
      child: widget.child
          .animate(target: _isVisible ? 1 : 0) // Play when _isVisible is true
          .fade(duration: 600.ms) // Fade in
          .slideY(
            begin: 0.2,
            end: 0,
            duration: 600.ms,
            curve: Curves.easeOut,
          ), // Slide up
    );
  }
}
