import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_card.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/gradient_card2.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/text_card.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/text_card2.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "About me",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              textAlign: TextAlign.center,
              "“If you are not going to tell the world \nwho you are, the world is not going to tell you, how good you are.”",
              style: AppStyles.bodyText,
            ),
            // SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset(
                    "assets/iosphone.webp",
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      // gradient: gradient,
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.25),
                    ),
                    child: Text(
                      "I’m Irshad Khaliq Haqqani, a Flutter Developer with 1.5 years of hands-on experience building cross-platform mobile applications. I’ve worked at Software Technology Park Skardu, delivering real-world apps for  business and service-based clients.",
                      style: AppStyles.bodyText,
                    ),
                  ),
                  SizedBox(height: 10),
                  GradientCard(
                    context,
                    "Intermediate from Boys Degree College Khalpu(ICS).\nGraduation from University of Baltistan Skardu(BSCS)",
                    LinearGradient(
                      colors: [
                        Color(0xFF101010).withOpacity(0.85),
                        Color(0xFF262626).withOpacity(0.85),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  GradientCard2(
                    context,
                    "Flutter & Mobile Development \nState Management (Provider, GetX) \nBackend & APIs (Firebase, REST) \nTools (Git, VS Code, Android Studio)",
                    LinearGradient(
                      colors: [
                        const Color(0xFF101010).withOpacity(0.85),
                        const Color(0xFF262626).withOpacity(0.85),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "About me",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.center,
                "“If you are not going to tell the world \nwho you are, the world is not going to tell you, how good you are.”",
                style: AppStyles.bodyText,
              ),
              // SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    _GlowCircle(),

                    Positioned(
                      bottom: 40,
                      left: 0,
                      child: GradientCard(
                        context,
                        "Intermediate from Boys Degree College Khalpu(ICS).\nGraduation from University of Baltistan Skardu(BSCS)",
                        LinearGradient(
                          colors: [
                            Color(0xFF101010).withOpacity(0.85),
                            Color(0xFF262626).withOpacity(0.85),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 40,
                      child: GradientCard2(
                        context,
                        "Flutter & Mobile Development \nState Management (Provider, GetX) \nBackend & APIs (Firebase, REST) \nTools (Git, VS Code, Android Studio)",
                        LinearGradient(
                          colors: [
                            const Color(0xFF101010).withOpacity(0.85),
                            const Color(0xFF262626).withOpacity(0.85),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 0,
                      child: TextCard(
                        "I’m Irshad Khaliq Haqqani, a Flutter Developer with 1.5 years of hands-on experience building cross-platform mobile applications. I’ve worked at Software Technology Park Skardu, delivering real-world apps for  business and service-based clients.",
                        context,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 100,
                      child: TextCard2(
                        "I enjoy turning ideas into reliable products and collaborating closely with teams. Currently, I’m seeking junior or entry-level Flutter developer opportunities to grow and contribute to impactful mobile applications.",
                        context,
                      ),
                    ),
                    Image.asset(
                      "assets/iosphone.webp",
                      height: 550,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _GlowCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8B00B4).withOpacity(0.4),
            blurRadius: 150,
            spreadRadius: 10,
          ),
        ],
      ),
    );
  }
}
