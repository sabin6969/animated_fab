import 'package:animated_fab/home_page.dart';
import 'package:animated_fab/info_page.dart';
import 'package:animated_fab/settings_page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;

  final List<Widget> _pages = [
    HomePage(),
    InfoPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          _index = value;
          setState(() {});
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.info,
            ),
            label: "info",
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            label: "Settings",
          )
        ],
      ),
    );
  }
}
