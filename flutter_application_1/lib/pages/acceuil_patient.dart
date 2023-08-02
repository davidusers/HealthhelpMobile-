import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/inscription_medecin.dart';
import 'package:flutter_application_1/pages/views/actualite.dart';
import 'package:flutter_application_1/pages/views/consultation.dart';
import 'package:flutter_application_1/pages/views/plus.dart';
import 'package:flutter_application_1/pages/views/interface_patient.dart';

class Aceuilpatient extends StatefulWidget {
  const Aceuilpatient({super.key});

  @override
  State<Aceuilpatient> createState() => _AceuilpatientState();
}

class _AceuilpatientState extends State<Aceuilpatient> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _pageController,
        children: const <Widget>[
          Patient(),
          Actualite(),
          Consultation(),
          Plus(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 32,
        elevation: 10,
        currentIndex: _currentIndex,
        onTap: (index) { 
          setState(() {
            _currentIndex = index;
          });
          _pageController.jumpToPage(_currentIndex);
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_sharp), label: 'Actualite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_back), label: 'Consultation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Parametre'),
        ],
      ),
    );
  }
}
