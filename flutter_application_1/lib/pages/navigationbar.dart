// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';



class bottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        
      ),
      
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0; //changement de la page de la page de navigation
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentIndex(index), 
        // 
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 32,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_sharp), label: 'Actualite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_back), label: 'Consultation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: 'Plus'),
        ],
      ),
    );
  }
}
