import 'package:flutter/material.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
   final  isMobile=MediaQuery.of(context).size.width<800;
    return Stack(
      clipBehavior: Clip.none,
      children: [
       isMobile? Positioned(
        right: 20,
        left: 30,
          child: Image.asset(
            "assets/hero_image_2.png",
            height:isMobile?200: 400,
            fit: BoxFit.contain,
          ),
        ):
        Positioned(
          right: 20,
          top: 30,
          child: Image.asset(
            "assets/hero_image_2.png",
            height:isMobile?200: 400,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right:isMobile?100: 70,
          top: 50,
          child: Container(
            height:isMobile?200: 400,
            width:isMobile?200: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF8B00B4),
                   offset: Offset(0, 0),
                   spreadRadius: 30,
                   blurRadius: 200
                )
              ]
            ),
          ),
        ),
       isMobile? Positioned.fill(
          child: Image.asset(
            "assets/my_image.png",
            height:isMobile?300: 600,
            fit: BoxFit.contain,
          ),
        ): Positioned(
          right:isMobile?50: 0,
          top: 20,
          child: Image.asset(
            "assets/my_image.png",
            height:isMobile?300: 600,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
