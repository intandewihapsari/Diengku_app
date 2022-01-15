import 'package:diengku_app/constans.dart';
import 'package:diengku_app/users/akunpage.dart';
import 'package:diengku_app/users/beranda.dart';
import 'package:diengku_app/users/favoritepage.dart';
import 'package:diengku_app/users/pesanpage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

// ignore: camel_case_types
class _landingPageState extends State<landingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new FavoritePageWidget(),
    new PesanPage(),
    new AkunPageWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.chat,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
