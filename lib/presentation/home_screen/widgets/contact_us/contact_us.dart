import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/contact_tiles.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // first
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height:isMobile?240: 300,
            width:isMobile? MediaQuery.of(context).size.width * 0.6:MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                // Title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Get In Touch", style: AppStyles.heading2),
                    Text(
                      "Let's build something together :)",
                      style: AppStyles.bodyText,
                    ),
                  ],
                ),
                ContactTiles(
                  heading: "Email",
                  bodyText: "khaliqhaqqaniirshd@gmail.com",
                  svgName: "assets/svgs/envelope-solid-full.svg",
                  lastSvgName: "assets/svgs/location-arrow-solid-full.svg",
                ),
                ContactTiles(
                  heading: "Contact No",
                  bodyText: "khaliqhaqqaniirshd@gmail.com",
                  svgName: "assets/svgs/phone-solid-full.svg",
                  lastSvgName: "assets/svgs/location-arrow-solid-full.svg",
                ),
                ContactTiles(
                  heading: "Location",
                  bodyText: "Software Techonolgy Park Skardu",
                  svgName: "assets/svgs/location-arrow-solid-full.svg",
                  lastSvgName: "assets/svgs/location-arrow-solid-full.svg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
