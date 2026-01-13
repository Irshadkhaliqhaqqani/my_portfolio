import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return ResponsiveLayout(
      mobile: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Text(
              "Ikhaqqani",
              style: GoogleFonts.cookie(
                color: Color(0xFF8B00B4),
                fontWeight: FontWeight.bold,
              ),
            ),
            // Appbar menu
            Icon(Icons.menu),
          ],
        ),
      ),
      desktop: Padding(
        padding: EdgeInsets.only(right: 80, left: 80, top: 40),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 1140
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // logo
              Text(
                "Ikhaqqani",
                style: GoogleFonts.greatVibes(
                  color: Color(0xFF8B00B4),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
          
              // Appbar items
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About"),
                    Text("Tech"),
                    Text("Project"),
                    Text("Experience"),
                    Text("Contact Us"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
