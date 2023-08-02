import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bienvenue.dart';
//import 'package:flutter_application_1/pages/choix_utilisateur.dart';
//import 'package:flutter_application_1/pages/inscription_patient.dart';
//import 'package:flutter_application_1/pages/acceuil_patient.dart';

const d_red = Color.fromARGB(223, 24, 62, 159);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medecine',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text(" healhelp mobile "),
        
        ),
        body: Bienvenue(),
        bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Acceuil'
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Acceuil'
            )
          ],
           ),
      ),
    );
  }
}
