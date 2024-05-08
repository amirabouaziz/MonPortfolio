import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobileproj/screen/exp_screen.dart';
import 'package:mobileproj/screen/formation_screen.dart';
import 'package:mobileproj/screen/profil_screen.dart';
import 'package:mobileproj/screen/project_screen.dart';

import '../main.dart';

class TabBarScreen extends StatefulWidget {
  final Function switchTheme;

  TabBarScreen({required this.switchTheme});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  var _indexPages = 0;

  List<Widget> pages = [
    ProfilScreen(),
    ExpScreen(),
    FormationScreen(),
    ProjectScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              widget.switchTheme();
            },
            child: Icon(Icons.format_color_fill),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: <Widget>[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.update,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.school,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.phonelink,
            size: 30,
            color: Colors.black,
          )
        ],
        onTap: (index) {
          setState(() {
            _indexPages = index;
          });
        },
      ),
      body: pages[_indexPages],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchMap('dar salah bouaziz');
        },
        child: Icon(Icons.map),
      ),
    );
  }
}
