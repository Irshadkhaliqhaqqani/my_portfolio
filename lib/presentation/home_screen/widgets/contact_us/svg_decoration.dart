import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgDecoration extends StatelessWidget {
  final String svgName;
  const SvgDecoration({super.key, required this.svgName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgName,
      width: 25,
      height: 25,
      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
    );
  }
}
