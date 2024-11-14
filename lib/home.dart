import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mobile_pemob/ProfilePage.dart';
import 'package:mobile_pemob/bmi_screen.dart';
import 'package:mobile_pemob/calculator_screen.dart';
import 'package:mobile_pemob/home_screen.dart';
import 'package:mobile_pemob/list_halaman.dart';
import 'package:mobile_pemob/nilai_screen.dart';
import 'package:mobile_pemob/suhu_screen.dart';
import 'package:mobile_pemob/uang_screen.dart';
import 'package:mobile_pemob/panjang_screen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ListHalaman(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(250, 205, 19, 1), //atau white 24
        color: Color.fromRGBO(240, 120, 38, 1),
        items: <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.list, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
