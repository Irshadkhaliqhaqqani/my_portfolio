import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

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
  bool _isManualScrolling = false; // Flag to prevent fighting

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  // Separated listener function for clarity
  void _onScroll() {
    // 1. If we are clicking a button, ignore the scroll events
    if (_isManualScrolling) return;

    // 2. Standard Scroll Spy Logic
    for (int i = 0; i < widget.sectionKeys.length; i++) {
      final context = widget.sectionKeys[i].currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        // Check if the section is roughly at the top of the screen
        final pos = box.localToGlobal(Offset.zero).dy;

        // "150" is the offset trigger (when the section hits top area)
        if (pos <= 150 && pos >= -box.size.height / 2) {
          if (activeIndex != i && mounted) {
            setState(() => activeIndex = i);
          }
        }
      }
    }
  }

  Future<void> scrollToSection(int index) async {
    final context = widget.sectionKeys[index].currentContext;

    // Safety check: If context is null, the widget isn't built yet
    if (context == null) return;

    // 1. Disable the listener momentarily
    setState(() {
      _isManualScrolling = true;
      activeIndex = index; // Update the UI immediately
    });

    // 2. Perform the scroll
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 800), // Slower is smoother
      curve: Curves.easeInOutCubic, // Smoother curve
      alignment: 0, // 0 = Align to top
    );

    // 3. Re-enable the listener after scroll finishes
    // Small delay to ensure physics have stopped
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      setState(() {
        _isManualScrolling = false;
      });
    }
  }

  // Menu Titles
  final List<String> menuTitles = [
    "About",
    "Tech",
    "Performance",
    "Project",
    "Experience",
    "Contact Us",
  ];
  Widget menuItem(String title, int index) {
    final isActive = activeIndex == index;

    return InkWell(
      onTap: () => scrollToSection(index),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
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
            const SizedBox(height: 4),
            // The animated Underline
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    // --- MOBILE APP BAR ---
    if (isMobile) {
      return AppBar(
        backgroundColor: Colors.transparent, // Clean transparency
        elevation: 0,
        flexibleSpace: ClipRect(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.black.withOpacity(0.2)),
          ),
        ),
        title: Text(
          "Ikhaqqani",
          style: GoogleFonts.cinzel(
            color: const Color(0xFF8B00B4),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      );
    }

    // --- DESKTOP APP BAR ---
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Material(
        type: MaterialType.transparency,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),

            child: Padding(
              padding: const EdgeInsets.only(right: 80, left: 80),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.radiusCircular),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 300, sigmaY: 300),
                  child: Container(
                    // margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.1),
                    ),
                    // FIX: Center and Constrain content to match Body width
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // LOGO
                        Text(
                          "Ikhaqqani",
                          style: GoogleFonts.greatVibes(
                            color: const Color(0xFF8B00B4),
                            fontWeight: FontWeight.bold,
                            fontSize: 28, // Slightly larger for desktop
                          ),
                        ),

                        // MENU ITEMS
                        // Using Row directly is simpler than fixed width container
                        Row(
                          children: List.generate(
                            menuTitles.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: menuItem(menuTitles[index], index),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
