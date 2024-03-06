import 'package:flutter/material.dart';
import 'package:mb_app/screens/home/home_screen.dart';
import 'package:mb_app/screens/profile/profile_screen.dart';
import 'package:mb_app/screens/search/search_screen.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();

}

class _MyPageState extends State<MyPage> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  int _selectedIndex = 0;

  _changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("T2207A Demo App",
            style: TextStyle(color: Colors.white)
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black45,
        onTap: (index) => _changeTab(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
    );
  }
}