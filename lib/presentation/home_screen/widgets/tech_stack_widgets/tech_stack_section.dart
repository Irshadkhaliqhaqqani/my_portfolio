import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/other_skills_chips.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_chips.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_stack_group.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Tech Group

    final techGroup = [
      TechStackGroup(
        title: "Mobile & Frontend",
        chips: [
          TechChips(
            iconText: "Flutter",
            svgPicture: "assets/svgs/flutter-brands-solid-full.svg",
          ),
          TechChips(
            iconText: "Dart",
            svgPicture: "assets/svgs/dart-lang-brands-solid-full.svg",
          ),
        ],
      ),
      TechStackGroup(
        title: "Backend & APIs",
        chips: [
          TechChips(
            iconText: "Firebase",
            svgPicture: "assets/svgs/firebase.svg",
          ),
          TechChips(
            iconText: "Node JS",
            svgPicture: "assets/svgs/nodedotjs.svg",
          ),
          TechChips(
            iconText: "REST APIs",
            svgPicture: "assets/svgs/fastapi.svg",
          ),
        ],
      ),
      TechStackGroup(
        title: "State Management",
        chips: [
          TechChips(iconText: "Provider", svgPicture: "assets/svgs/p.svg"),
          TechChips(iconText: "RiverPod", svgPicture: "assets/svgs/r.svg"),
        ],
      ),
      TechStackGroup(
        title: "Tools",
        chips: [
          TechChips(
            iconText: "Github",
            svgPicture: "assets/svgs/github-brands-solid-full.svg",
          ),
          TechChips(
            iconText: "Android Studio",
            svgPicture: "assets/svgs/android.svg",
          ),
          TechChips(
            iconText: "Vs Code",
            svgPicture: "assets/svgs/visual-studio-code-svgrepo-com.svg",
          ),
        ],
      ),

      //5
      TechStackGroup(
        title: "UI/ UX Design",
        chips: [
          TechChips(iconText: "Figma", svgPicture: "assets/svgs/figma.svg"),
          TechChips(iconText: "PhotoShop", svgPicture: "assets/svgs/ps.svg"),
        ],
      ),
    ];

    // Other Skills Section

    final otherSkills = [
      "Flutter Web Development",
      "Debugging & Testing",
      "UI/UX Collaboration",
      "Architecture & Practice",
      "Clean Architecture",
      "Reusable Components",
    ];

    // Responsive Layout for Mobile
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
      child: Column(
        children: [
          // Section Titles
          const Text(
            "Tech Stack",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          isMobile
              ? Text(
                  textAlign: TextAlign.center,
                  "“Change is inevitable, so I keep on exploring new technology, learn it in a minimal possible way and then build something out of it to see how well I did :)”",
                  style: AppStyles.bodyText,
                )
              : Text(
                  textAlign: TextAlign.center,
                  "“Change is inevitable, so I keep on exploring new technology, \nlearn it in a minimal possible way and then build something out of it to see how well I did :)”",
                  style: AppStyles.bodyText,
                ),
          SizedBox(height: 20),

          // Section Main Parts
          isMobile
              ? Column(
                  children: [
                    ...techGroup,
                    Image.asset(
                      "assets/imageflutter_2.webp",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Other Skills",
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 15),
                        ...otherSkills.map(
                          (skill) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: OtherSkillsChips(
                                  iconTexts: skill,
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "I build scalable cross-platform applications using Flutter, Firebase, and clean state management practices.",
                          style: AppStyles.bodyText,
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: .start,
                  children: [
                    //left column
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: techGroup,
                      ),
                    ),
                    // Middle image
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "assets/imageflutter_2.webp",
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                    ),

                    //Right column other skills
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Other Skills",
                            style: TextStyle(
                              color: AppColors.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 15),
                          ...otherSkills.map(
                            (skill) => Padding(
                              padding: EdgeInsetsGeometry.only(bottom: 20),
                              child: OtherSkillsChips(
                                iconTexts: skill,
                                svgPictures: "assets/svgs/fastapi.svg",
                              ),
                            ),
                          ),
                          Text(
                            "I build scalable cross-platform applications using Flutter, Firebase, and clean state management practices.",
                            style: AppStyles.bodyText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
