import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/about_me.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/contact_us.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/experience_section/experience_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/my_app_bar.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/my_hero_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/performace_and_maintanace/performance_and_maintainance_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/project_section/project_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_stack_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(children: [
        // App Bar
            MyAppBar(),
            // Hero Section
            MyHeroSection(),
            // About me Section
            AboutMe(),
            // Tech Stack Section
            TechStackSection(),
            // Performance and Maintanince
            PerformanceAndMaintainanceSection(),
            // Project Section
            ProjectSection(),
            // Experience Section
            ExperienceSection(),
            // Contact Us Section
            ContactUs(),
           
      ],)
    
    );
  }
}
