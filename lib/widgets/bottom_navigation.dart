import 'package:course_app/pages/home.dart';
import 'package:course_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _child = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
  ];
  var currentIndex = 0;

  void onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedFontSize: 14.0,
        backgroundColor: CustomColors.primaryDark,
        selectedItemColor: CustomColors.white,
        unselectedItemColor: CustomColors.accent,
        showSelectedLabels: true,
        onTap: onTappedBar,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Categories',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Saved',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
