import 'package:course_app/pages/home.dart';
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
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  var currentIndex = 0;

  void onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _child[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedFontSize: 14.0,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: true,
        onTap: onTappedBar,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Pengiriman',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Pengembalian',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Tiket',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
