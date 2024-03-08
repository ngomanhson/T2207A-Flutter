import 'package:flutter/material.dart';
import 'package:mb_app/screens/home/ui/home_carousel.dart';
import 'package:mb_app/screens/home/ui/home_category.dart';
import 'package:mb_app/screens/home/ui/popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeCarousel(),
        HomeCategory(),
        Popular(),
      ],
    );
  }
}