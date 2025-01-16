import 'package:flutter/material.dart';
import 'package:trip_manager/features/dashboard/home.dart';
import 'package:trip_manager/features/dashboard/profile.dart';

import '../../core/ colors/core_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _selectedIndex == 0
            ? const Home()
            : _selectedIndex == 2
                ? const Profile()
                : null,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon(
                Icons.add,
                size: 44,
                color: Colors.blue,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account')
        ],
        selectedItemColor: primaryColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
