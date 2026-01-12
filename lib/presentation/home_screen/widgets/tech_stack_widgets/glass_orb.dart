import 'package:flutter/material.dart';

class GlassOrb extends StatefulWidget {
  const GlassOrb({super.key});

  @override
  State<GlassOrb> createState() => _GlassOrbState();
}

class _GlassOrbState extends State<GlassOrb>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Transform.translate(
          offset: Offset(0, 12 * 
            (0.5 - (_controller.value - 0.5).abs())),
          child: Transform.rotate(
            angle: _controller.value * 2 * 3.14,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff3B82F6),
                    Color(0xff06B6D4),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff3B82F6).withOpacity(0.45),
                    blurRadius: 60,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
