import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/about_me_section/about_me.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/contact_us.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/experience_section/experience_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/my_app_bar.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/hero_section/my_hero_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/performace_and_maintanace/performance_and_maintainance_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/project_section/project_section.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/reveal_on_scroll.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_stack_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 1. Initialize Controller and Keys HERE (outside build)
  late final ScrollController scrollController;

  // final GlobalKey heroKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey techKey = GlobalKey();
  final GlobalKey performanceKey = GlobalKey();
  final GlobalKey projectKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  late final List<GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    // Group keys into the list
    sectionKeys = [
      aboutKey,
      techKey,
      performanceKey,
      projectKey,
      experienceKey,
      contactKey,
    ];
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // --- NEW: Helper function to handle Drawer Clicks ---
  void _scrollToSection(int index) {
    // 1. Close the drawer first
    Navigator.of(context).pop();

    // 2. Find the context of the target section
    final targetContext = sectionKeys[index].currentContext;
    if (targetContext != null) {
      // 3. Scroll to that context
      Scrollable.ensureVisible(
        targetContext,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
        alignment: 0, // Align to top
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      backgroundColor: AppColors.background,
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF8B00B4)),
              child: Center(child: Text("Menu")),
            ),
            ListTile(
              title: const Text("About"),
              onTap: () => _scrollToSection(0),
            ),
            ListTile(
              title: const Text("Tech"),
              onTap: () => _scrollToSection(1),
            ),
            ListTile(
              title: const Text("Performance"),
              onTap: () => _scrollToSection(2),
            ),
            ListTile(
              title: const Text("Projects"),
              onTap: () => _scrollToSection(3),
            ),
            ListTile(
              title: const Text("Experience"),
              onTap: () => _scrollToSection(4),
            ),
            ListTile(
              title: const Text("Contact Me"),
              onTap: () => _scrollToSection(5),
            ),
          ],
        ),
      ),

      // ✅ Pass the stable controller and keys
      appBar: MyAppBar(
        scrollController: scrollController,
        sectionKeys: sectionKeys,
        isMobile: isMobile,
      ),

      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1440), // Standard 1140
          child: SingleChildScrollView(
            controller: scrollController, // ✅ Same controller instance
            child: Column(
              children: [
                RevealOnScroll(child: MyHeroSection()),
                RevealOnScroll(child: AboutMe(key: aboutKey)),
                RevealOnScroll(child: TechStackSection(key: techKey)),
                RevealOnScroll(
                  child: PerformanceAndMaintainanceSection(key: performanceKey),
                ),
                RevealOnScroll(child: ProjectSection(key: projectKey)),
                RevealOnScroll(child: ExperienceSection(key: experienceKey)),
                RevealOnScroll(child: ContactUs(key: contactKey)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
