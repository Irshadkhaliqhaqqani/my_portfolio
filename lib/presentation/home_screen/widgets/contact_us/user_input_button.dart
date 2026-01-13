import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_sizes.dart';

class UserInputButton extends StatelessWidget {
  const UserInputButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 150
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusCircular),
      ),
      child: Center(
        child: Text(
          "Submit",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
