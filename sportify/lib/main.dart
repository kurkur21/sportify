import 'package:flutter/material.dart';
import 'package:sportify/categori.dart';
import 'package:sportify/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sportify/user.dart';

//import 'package:sportify/categori.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex = 0;

  Color c1 = Color(0xff21E6BF);
  Color c2 = Color(0xff278EA5);
  Color c3 = Color(0xff1F4287);
  Color c4 = Color(0xff071E3D);

  void goToPage(index){
    setState((){
      currentIndex = index;
    });
  }

  List _pages = [
    Home(),
    CategoriesPage(),
    ListUser()
  ];

  // This widget is the root of your application.
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[currentIndex],
        bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: c4,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20)
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: GNav(
            backgroundColor: c4,
            color: c1,
            activeColor: c4,
            tabBackgroundColor: c1,
            gap: 8,
            padding: EdgeInsets.all(12),
            onTabChange: (index) => goToPage(index),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'home',
              ),
              GButton(
                icon: Icons.explore,
                text: ' Explore',
              ),
              GButton(
                icon: Icons.pin,
                text: 'Score',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Setting',
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}