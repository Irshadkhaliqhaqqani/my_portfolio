import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/other_skills_chips.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_chips.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_stack_group.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1140),
        child: Column(
          children: [
            // Section Titles
            const Text(
              "Tech Stack",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
             isMobile? Text(
              textAlign: TextAlign.center,
              "“Change is inevitable, so I keep on exploring new technology, learn it in a minimal possible way and then build something out of it to see how well I did :)”",
              style: TextStyle(color: AppColors.secondary),
            ): Text(
              textAlign: TextAlign.center,
              "“Change is inevitable, so I keep on exploring new technology, \nlearn it in a minimal possible way and then build something out of it to see how well I did :)”",
              style: TextStyle(color: AppColors.secondary),
            ),
            SizedBox(height: 10),
            // Section Main Parts
            isMobile
                ? Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 1
                            TechStackGroup(
                              title: "Mobile & Frontend",
                              chips: [
                                TechChips(
                                  iconText: "Flutter",
                                  svgPicture:
                                      "assets/svgs/flutter-brands-solid-full.svg",
                                ),
                                TechChips(
                                  iconText: "Dart",
                                  svgPicture:
                                      "assets/svgs/dart-lang-brands-solid-full.svg",
                                ),
                              ],
                            ),
                            //2
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

                            //3
                            TechStackGroup(
                              title: "State Management",
                              chips: [
                                TechChips(
                                  iconText: "Provider",
                                  svgPicture: "assets/svgs/p.svg",
                                ),
                                TechChips(
                                  iconText: "RiverPod",
                                  svgPicture: "assets/svgs/r.svg",
                                ),
                              ],
                            ),

                            //4
                            TechStackGroup(
                              title: "Tools",
                              chips: [
                                TechChips(
                                  iconText: "Github",
                                  svgPicture:
                                      "assets/svgs/github-brands-solid-full.svg",
                                ),
                                TechChips(
                                  iconText: "Android Studio",
                                  svgPicture: "assets/svgs/android.svg",
                                ),
                                TechChips(
                                  iconText: "Vs Code",
                                  svgPicture:
                                      "assets/svgs/visual-studio-code-svgrepo-com.svg",
                                ),
                              ],
                            ),

                            //5
                            TechStackGroup(
                              title: "UI/ UX Design",
                              chips: [
                                TechChips(
                                  iconText: "Figma",
                                  svgPicture: "assets/svgs/figma.svg",
                                ),
                                TechChips(
                                  iconText: "PhotoShop",
                                  svgPicture: "assets/svgs/ps.svg",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isMobile ? 200 : 600,
                        width: double.infinity,
                        child: Image.asset("assets/imageflutter_2.png"),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Other Skills",
                                  style: TextStyle(
                                    color: AppColors.secondary,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 15),
                                OtherSkillsChips(
                                  iconTexts: "Flutter Web Developement",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                                SizedBox(height: 20),
                                OtherSkillsChips(
                                  iconTexts: "Debugging & Testing",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                                SizedBox(height: 20),

                                OtherSkillsChips(
                                  iconTexts: "UI/UX Collaboration",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                                SizedBox(height: 20),

                                OtherSkillsChips(
                                  iconTexts: "Architecture & Practice",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                                SizedBox(height: 20),

                                OtherSkillsChips(
                                  iconTexts: "Clean Architecture",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),
                                SizedBox(height: 20),

                                OtherSkillsChips(
                                  iconTexts: "Reuseable Compenents",
                                  svgPictures: "assets/svgs/fastapi.svg",
                                ),

                                SizedBox(height: 20),

                                Text(
                                  "I build scalable cross-platform applications using Flutter, Firebase, and clean state management practices.",
                                  style: TextStyle(
                                    color: AppColors.secondary,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // 1
                              TechStackGroup(
                                title: "Mobile & Frontend",
                                chips: [
                                  TechChips(
                                    iconText: "Flutter",
                                    svgPicture:
                                        "assets/svgs/flutter-brands-solid-full.svg",
                                  ),
                                  TechChips(
                                    iconText: "Dart",
                                    svgPicture:
                                        "assets/svgs/dart-lang-brands-solid-full.svg",
                                  ),
                                ],
                              ),
                              //2
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

                              //3
                              TechStackGroup(
                                title: "State Management",
                                chips: [
                                  TechChips(
                                    iconText: "Provider",
                                    svgPicture: "assets/svgs/p.svg",
                                  ),
                                  TechChips(
                                    iconText: "RiverPod",
                                    svgPicture: "assets/svgs/r.svg",
                                  ),
                                ],
                              ),

                              //4
                              TechStackGroup(
                                title: "Tools",
                                chips: [
                                  TechChips(
                                    iconText: "Github",
                                    svgPicture:
                                        "assets/svgs/github-brands-solid-full.svg",
                                  ),
                                  TechChips(
                                    iconText: "Android Studio",
                                    svgPicture: "assets/svgs/android.svg",
                                  ),
                                  TechChips(
                                    iconText: "Vs Code",
                                    svgPicture:
                                        "assets/svgs/visual-studio-code-svgrepo-com.svg",
                                  ),
                                ],
                              ),

                              //5
                              TechStackGroup(
                                title: "UI/ UX Design",
                                chips: [
                                  TechChips(
                                    iconText: "Figma",
                                    svgPicture: "assets/svgs/figma.svg",
                                  ),
                                  TechChips(
                                    iconText: "PhotoShop",
                                    svgPicture: "assets/svgs/ps.svg",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: isMobile ? 200 : 600,
                          child: Image.asset("assets/imageflutter_2.png"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          height: 600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Other Skills",
                                    style: TextStyle(
                                      color: AppColors.secondary,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  OtherSkillsChips(
                                    iconTexts: "Flutter Web Developement",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),
                                  SizedBox(height: 20),
                                  OtherSkillsChips(
                                    iconTexts: "Debugging & Testing",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),
                                  SizedBox(height: 20),

                                  OtherSkillsChips(
                                    iconTexts: "UI/UX Collaboration",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),
                                  SizedBox(height: 20),

                                  OtherSkillsChips(
                                    iconTexts: "Architecture & Practice",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),
                                  SizedBox(height: 20),

                                  OtherSkillsChips(
                                    iconTexts: "Clean Architecture",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),
                                  SizedBox(height: 20),

                                  OtherSkillsChips(
                                    iconTexts: "Reuseable Compenents",
                                    svgPictures: "assets/svgs/fastapi.svg",
                                  ),

                                  SizedBox(height: 20),

                                  Text(
                                    "I build scalable cross-platform applications using Flutter, Firebase, and clean state management practices.",
                                    style: TextStyle(
                                      color: AppColors.secondary,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
