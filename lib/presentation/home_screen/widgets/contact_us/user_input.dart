import 'package:flutter/material.dart';

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
        hintStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
