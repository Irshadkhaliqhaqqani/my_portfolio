import 'dart:ui';

import 'package:flutter/material.dart';

class GradientCardsButtons extends StatelessWidget {
  const GradientCardsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      margin: EdgeInsets.only(top: isMobile ? 10 : 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFF262626).withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "Download Resume",
        style: const TextStyle(
          height: 1.5,
          fontSize: 15,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
