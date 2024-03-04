
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("T2207A App Example"),
      ),

      body:
      // const Text(
      //   "Hello World!",
      //   style: TextStyle(color: Colors.pinkAccent),
      // ),
      Image.network('https://images.unsplash.com/photo-1682687220777-2c60708d6889?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
    );
  }
}