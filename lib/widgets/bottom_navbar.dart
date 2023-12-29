import 'package:demoo/screen/home_screen.dart';
import 'package:demoo/screen/orders_screen.dart';
import 'package:demoo/screen/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/profile_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
       elevation: 30,
        surfaceTintColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        // indicatorColor: Colors.blueGrey,
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.amber[100],

        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.home),
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon:  Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.cart),

            label: 'Orders',
          ),
          NavigationDestination(
            icon:Icon(CupertinoIcons.person),

            label: 'Profile',
          ),
        ],
      ),

      body: <Widget>[
        HomeScreen(),
        SearchScreen(),
        OrdersScreen(),
        ProfileScreen()

      ][currentPageIndex],

    );
  }
}
