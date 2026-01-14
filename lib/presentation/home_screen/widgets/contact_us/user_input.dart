import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/constraints/app_styles.dart';

class UserInput extends StatelessWidget {
  final String inputHintText;
  const UserInput({super.key, required this.inputHintText});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: inputHintText,
        hintStyle: AppStyles.bodyText,
      ),
    );
  }
}
