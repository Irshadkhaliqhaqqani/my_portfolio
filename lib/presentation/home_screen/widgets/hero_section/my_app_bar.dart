import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;
  final List<GlobalKey> sectionKeys;
  const MyAppBar({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _MyAppBarState extends State<MyAppBar> {
  int activeIndex = 0;

  void scrollToSection(int index) {
    final context = widget.sectionKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }

    setState(() => activeIndex = index);
  }

  // <-- ADD THE menuItem METHOD HERE
  Widget menuItem(String title, int index) {
    final isActive = activeIndex == index;

    return InkWell(
      onTap: () => scrollToSection(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isActive ? const Color(0xFF8B00B4) : Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: 2,
            width: isActive ? 30 : 0,
            decoration: BoxDecoration(
              color: const Color(0xFF8B00B4),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    backgroundColor:
    isMobile ? Colors.transparent : Colors.transparent;
    if (isMobile) {
      return AppBar(
        flexibleSpace: isMobile
            ? ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(color: Colors.black.withOpacity(0.18)),
                ),
              )
            : null,
        elevation: 0,
        title: Text(
          "Ikhaqqani",
          style: GoogleFonts.cookie(
            color: const Color(0xFF8B00B4),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      );
    }

    // Desktop AppBar
    return PreferredSize(
      preferredSize: preferredSize,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            color: Colors.black.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ikhaqqani",
                    style: GoogleFonts.greatVibes(
                      color: const Color(0xFF8B00B4),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        menuItem("About", 0),

                        menuItem("Tech", 1),

                        menuItem("Project", 2),

                        menuItem("Experience", 3),

                        menuItem("Contact Us", 4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
