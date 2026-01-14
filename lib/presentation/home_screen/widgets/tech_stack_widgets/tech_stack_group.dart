import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/tech_stack_widgets/tech_chips.dart';

class TechStackGroup extends StatelessWidget {
  final String title;
  final List<TechChips> chips;

  const TechStackGroup({super.key, required this.title, required this.chips});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    return Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.center : .start,
      children: [
        Text(title, style: TextStyle(color: AppColors.secondary)),
        const SizedBox(height: 10),
        Wrap(spacing: 10, runSpacing: isMobile ? 2 : 10, children: chips),
        SizedBox(height: isMobile ? 10 : 20),
      ],
    );
  }
}
