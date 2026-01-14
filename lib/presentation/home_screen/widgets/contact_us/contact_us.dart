import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';
import 'package:my_new_portfolio/core/responsive/responsive_layout.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/contact_tiles.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/svg_decoration.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/user_input.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/contact_us/user_input_button.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> svgUrl = [
      "assets/svgs/github-brands-solid-full.svg",
      "assets/svgs/linkedin-in-brands-solid-full.svg",
      "assets/svgs/facebook-f-brands-solid-full.svg",
      "assets/svgs/tiktok-brands-solid-full.svg",
    ];
    final isMobile = MediaQuery.of(context).size.width < 800;
    return ResponsiveLayout(
      mobile: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 10 : 60,
          vertical: isMobile ? 10 : 30,
        ),
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Get In Touch", style: AppStyles.heading2),
                SizedBox(height: 5),
                Text(
                  "Let's build something together :)",
                  style: AppStyles.bodyText,
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  // height: isMobile ? 240 : 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ContactTiles(
                        heading: "Email",
                        bodyText: "khaliqhaqqaniirshd@gmail.com",
                        svgName: "assets/svgs/envelope-solid-full.svg",
                        lastSvgName:
                            "assets/svgs/location-arrow-solid-full.svg",
                        onTapUrl: "mailto:khaliqhaqqaniirshd@gmail.com",
                      ),
                      SizedBox(height: 10),
                      ContactTiles(
                        heading: "Contact No",
                        bodyText: "khaliqhaqqaniirshd@gmail.com",
                        svgName: "assets/svgs/phone-solid-full.svg",
                        lastSvgName:
                            "assets/svgs/location-arrow-solid-full.svg",
                        onTapUrl: 'http://wa.me/93554574313',
                      ),
                      SizedBox(height: 10),

                      ContactTiles(
                        heading: "Location",
                        bodyText: "Software Techonolgy Park Skardu",
                        svgName: "assets/svgs/location-arrow-solid-full.svg",
                        lastSvgName:
                            "assets/svgs/location-arrow-solid-full.svg",
                        onTapUrl:
                            'https://www.google.com/maps/search/?api=1&query=Software+Technology+Park+Skardu',
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: .center,
                        children: [
                          SvgDecoration(svgName: svgUrl[0]),
                          SizedBox(width: 15),
                          SvgDecoration(svgName: svgUrl[1]),
                          SizedBox(width: 15),
                          SvgDecoration(svgName: svgUrl[2]),
                          SizedBox(width: 15),
                          SvgDecoration(svgName: svgUrl[3]),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  // height: isMobile ? 240 : 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserInput(inputHintText: 'Full Name*'),
                      SizedBox(height: 10),
                      UserInput(inputHintText: 'Contact no*'),
                      SizedBox(height: 10),
                      UserInput(inputHintText: 'Message*'),
                      SizedBox(height: 20),
                      UserInputButton(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Designed and Develop by Irshadkhaliqhaqqani",
              style: TextStyle(fontSize: 12, color: AppColors.secondary),
            ),
          ],
        ),
      ),
      desktop: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 10 : 60,
          vertical: isMobile ? 10 : 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.black12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Get In Touch", style: AppStyles.heading2),
                SizedBox(height: 5),

                Text(
                  "Let's build something together:)",
                  style: AppStyles.bodyText,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: isMobile ? 240 : 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ContactTiles(
                          heading: "Email",
                          bodyText: "khaliqhaqqaniirshd@gmail.com",
                          svgName: "assets/svgs/envelope-solid-full.svg",
                          lastSvgName:
                              "assets/svgs/location-arrow-solid-full.svg",
                          onTapUrl: "mailto:khaliqhaqqaniirshd@gmail.com",
                        ),
                        ContactTiles(
                          heading: "Contact No",
                          bodyText: "+923554574313",
                          svgName: "assets/svgs/phone-solid-full.svg",
                          lastSvgName:
                              "assets/svgs/location-arrow-solid-full.svg",
                          onTapUrl: 'https://wa.me/923554574313',
                        ),
                        ContactTiles(
                          heading: "Location",
                          bodyText: "Software Techonolgy Park Skardu",
                          svgName: "assets/svgs/location-arrow-solid-full.svg",
                          lastSvgName:
                              "assets/svgs/location-arrow-solid-full.svg",
                          onTapUrl:
                              'https://www.google.com/maps/search/?api=1&query=Software+Technology+Park+Skardu',
                        ),
                        Row(
                          children: [
                            SvgDecoration(svgName: svgUrl[0]),
                            SizedBox(width: 15),
                            SvgDecoration(svgName: svgUrl[1]),
                            SizedBox(width: 15),
                            SvgDecoration(svgName: svgUrl[2]),
                            SizedBox(width: 15),
                            SvgDecoration(svgName: svgUrl[3]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: isMobile ? 240 : 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserInput(inputHintText: 'Full Name*'),
                        UserInput(inputHintText: 'Email*'),
                        UserInput(inputHintText: 'Message*'),
                        UserInputButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Designed and Develop by Irshadkhaliqhaqqani",
              style: TextStyle(fontSize: 12, color: AppColors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
