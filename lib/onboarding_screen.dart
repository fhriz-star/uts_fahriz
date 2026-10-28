import 'package:flutter/material.dart';
import 'order_list_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            Image.network(
              'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
              height: 250,
            ),
            const SizedBox(height: 30),