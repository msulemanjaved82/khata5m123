// this is home page

import 'package:flutter/material.dart';
import 'package:khataapp/homepageitems.dart';
import 'package:khataapp/add.dart';
import 'package:khataapp/profilepage.dart';
import 'package:khataapp/statistics.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> pages = [
    const HomePageItems(),
    const StatisticsScreen(),
    const AddItems(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
            //currentPage == 0 ? const HomePageItems() : const StatisticsScreen(),
            pages[currentPage],
        // Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor:
              const Color.fromARGB(255, 0, 0, 0).withOpacity(.6),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Statistics',
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ));
  }
}
