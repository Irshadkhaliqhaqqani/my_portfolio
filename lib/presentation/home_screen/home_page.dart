import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/main.dart';
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
    final ScrollController scrollController = ScrollController();
    final aboutKey = GlobalKey();
    final techKey = GlobalKey();
    final performanceKey = GlobalKey();
    final projectKey = GlobalKey();
    final experienceKey = GlobalKey();
    final contactKey = GlobalKey();
    return Scaffold(
      backgroundColor: AppColors.background,

      // ✅ Drawer
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF8B00B4)),
              child: Text("Menu"),
            ),
            ListTile(title: const Text("About"), onTap: () {}),
            ListTile(title: const Text("Tech"), onTap: () {}),
            ListTile(title: const Text("Project"), onTap: () {}),
            ListTile(title: const Text("Experience"), onTap: () {}),
            ListTile(title: const Text("Contact Us"), onTap: () {}),
          ],
        ),
      ),

      // ✅ ONLY ONE APP BAR
      appBar: MyAppBar(
        scrollController: scrollController,
        sectionKeys: [
          aboutKey,
          techKey,
          performanceKey,
          projectKey,
          experienceKey,
          contactKey,
        ],
      ),

      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1440),
          child: ListView(
            controller: scrollController,
            children: [
              MyHeroSection(),
              AboutMe(key: aboutKey),
              TechStackSection(key: techKey),
              PerformanceAndMaintainanceSection(key: performanceKey),
              ProjectSection(key: projectKey),
              ExperienceSection(key: experienceKey),
              ContactUs(key: contactKey),
            ],
          ),
        ),
      ),
    );
  }
}
