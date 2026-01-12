import 'package:flutter/material.dart';

class GreetingCard extends StatelessWidget {
  final Color color;

  const GreetingCard({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    double cardHeight(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  return height < 800 ? 300 : 400;
}
    return Container(
      height: cardHeight(context),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Image.asset("assets/contact.png", fit: BoxFit.cover,)
    );
  }
}
