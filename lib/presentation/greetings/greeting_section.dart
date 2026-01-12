import 'package:flutter/material.dart';
import '../../core/responsive/responsive_layout.dart';
import 'greeting_card.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ResponsiveLayout(
        desktop: Row(
          children: const [
            Expanded(
              child: GreetingCard(
            
                color: Colors.green,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: GreetingCard(
          
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: GreetingCard(
             
                color: Colors.purple,
              ),
            ),
          ],
        ),
        mobile: SingleChildScrollView(
          child: Column(
            children: const [
              GreetingCard(
            
                color: Colors.green,
              ),
              SizedBox(height: 20),
              GreetingCard(
             
         
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              GreetingCard(
            
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
