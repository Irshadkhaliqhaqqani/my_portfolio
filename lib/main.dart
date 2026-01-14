import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/themes/dark_theme.dart';
import 'package:my_new_portfolio/presentation/home_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPortfolio',
      theme: darkTheme,
      home: HomePage(),
    );
  }
}
