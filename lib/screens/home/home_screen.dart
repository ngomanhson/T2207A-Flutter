import 'package:flutter/material.dart';
import 'package:mb_app/screens/home/ui/home_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeCarousel(),
        Text("Second section"),
        Text("Second section"),
      ],
    );
  }
}