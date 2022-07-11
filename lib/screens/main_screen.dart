// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/screens/navigation/favourites_screen.dart';
import 'package:travel_app/screens/navigation/flight_screen.dart';
import 'package:travel_app/screens/navigation/home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List navPages = [HomePage(), FlightPage(), FavouritesScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Color(0xFFFEFEFE),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Color(0xFF95A5AE),
          selectedItemColor: Color(0xFF2F7694),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bag_fill), label: "Flights"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart_fill), label: "Favorites")
          ]),
    );
  }
}
