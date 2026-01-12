import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_card.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_card2.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/text_card.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/text_card2.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SizedBox(
        height: 250,
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 0.45,
          ),
          // childern
          children: [
            textCard(
              "I’m Irshad Khaliq Haqqani, a Flutter Developer with 1.5 years of hands-on experience building cross-platform mobile applications. I’ve worked at Software Technology Park Skardu, delivering real-world apps for  business and service-based clients.",
            ),
            gradientCard2(
              context,
              "Flutter & Mobile Development \nState Management (Provider, GetX) \nBackend & APIs (Firebase, REST) \nTools (Git, VS Code, Android Studio)",
              const LinearGradient(
                colors: [Color(0xFF101010), Color(0xFF262626)],
              ),
            ),
            gradientCard(
              context,
              "Intermediate from Boys Degree College Khalpu(ICS).\nGraduation from University of Baltistan Skardu(BSCS)",
              LinearGradient(
                colors: [
                  const Color(0xFF101010).withOpacity(0.85),
                  const Color(0xFF262626).withOpacity(0.85),
                ],
              ),
            ),
            textCard2(
              "I enjoy turning ideas into reliable products and collaborating closely with teams. Currently, I’m seeking junior or entry-level Flutter developer opportunities to grow and contribute to impactful mobile applications.",
            ),
          ],
        ),
      ),
      desktop: SizedBox(
        height: 600,
        child: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 0.42,
          ),
          // childern
          children: [
            textCard(
              "I’m Irshad Khaliq Haqqani, a Flutter Developer with 1.5 years of hands-on experience building cross-platform mobile applications. I’ve worked at Software Technology Park Skardu, delivering real-world apps for  business and service-based clients.",
            ),
            gradientCard2(
              context,
              "Flutter & Mobile Development \nState Management (Provider, GetX) \nBackend & APIs (Firebase, REST) \nTools (Git, VS Code, Android Studio)",
              LinearGradient(
                colors: [
                  const Color(0xFF101010).withOpacity(0.85),
                  const Color(0xFF262626).withOpacity(0.85),
                ],
              ),
            ),
            gradientCard(
              context,
              "Intermediate from Boys Degree College Khalpu(ICS).\nGraduation from University of Baltistan Skardu(BSCS)",
              LinearGradient(
                colors: [
                  Color(0xFF101010).withOpacity(0.85),
                  Color(0xFF262626).withOpacity(0.85),
                ],
              ),
            ),
            textCard2(
              "I enjoy turning ideas into reliable products and collaborating closely with teams. Currently, I’m seeking junior or entry-level Flutter developer opportunities to grow and contribute to impactful mobile applications.",
            ),
          ],
        ),
      ),
    );
  }
}
