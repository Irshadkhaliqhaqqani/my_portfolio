import 'package:flutter/material.dart';

class MaxWidthWrapper extends StatelessWidget {
  final Widget child;

  const MaxWidthWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1140, 
        ),
        child: child,
      ),
    );
  }
}
