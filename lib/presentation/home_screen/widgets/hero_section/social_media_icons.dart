import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  final String  imageUrl;
  final  VoidCallback OnTap;
  const SocialMediaIcons({super.key, required this.imageUrl, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFF262626),
          border: Border.all(color: Color(0xFF3C3C3C),),
          shape: BoxShape.circle
        ),
        child: Image.asset(imageUrl, fit: BoxFit.cover,),
      ),
    );
  }
}