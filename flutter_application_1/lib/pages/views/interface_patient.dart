// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/FAQ/faq.dart';
import 'package:flutter_application_1/pages/navigationbar.dart';
import 'package:flutter_application_1/pages/acceuil_patient.dart';
import 'package:flutter_application_1/pages/views/consultation.dart';
import 'package:flutter_application_1/pages/views/schedule.dart';
import 'package:flutter_application_1/conseil/conseil.dart';
import 'package:flutter_application_1/Carnet/Carnet.dart';
import 'package:flutter_application_1/Forum/Forum.dart';
import 'package:flutter_application_1/medecine_traditionelle/medecinetraditionelle.dart';
import 'package:flutter_application_1/medecinechinoise/medecinechinoise.dart';
import 'package:flutter_application_1/Suivie/kit.dart';
import 'package:flutter_application_1/vaccin/vaccin.dart';
import 'package:flutter_application_1/Examen/examens.dart';
import 'package:flutter_application_1/rendez_vous/rendez_vous.dart';
import 'package:flutter_application_1/Medecin/Nos_medecin.dart';
class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Interfcepatient(),
      
    );
  }
}

class Interfcepatient extends StatefulWidget {
  const Interfcepatient({super.key});

  @override
  State<Interfcepatient> createState() => _InterfcepatientState();
}

class _InterfcepatientState extends State<Interfcepatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Acceuil'
        ,style: TextStyle(
          fontWeight: FontWeight.w500
        ),
        ),
        
      ),
      

      body: Center(
        
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.only(top: 12.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    
                    child: Image.asset(
                      'assets/image/consultation.png',
                      fit: BoxFit.cover,
                    ),
                    
                    
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        ' Consultation ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          
                        ),
                        
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Consultation(),
                          )
                          );
                    },
                  ),
                  
                  
                ],
                
              ),
            ),
            // service du kit medical
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/kitmedical.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        ' Kit medical ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Kit(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            // liste des docteurs de la plateforme 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/docteur.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        ' Medecin ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NosMedecin(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            // services des rendezvous disponible 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/rendezvous.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        ' rendez vous ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Rendezvous(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            // services de la medecines chinoise 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/chinois.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        ' medecine Chinoise ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Medecinechinoise(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            //services de la medecines traditionnelle ou de la medecine naturelle 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/traditionnelle.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Naturopathe ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Medecinetraditionnel(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/conseil.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Conseil ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Conseil(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            // dossiers medical  du patient 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/dossier.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Carnet ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Carnet(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            //listes des vaccins disponibles 
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/vaccin.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Vaccin ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Vaccin(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            //services exammens de laboratoires a faire sur l'application 
            
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/laboratoire.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Examen de laboratoire',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Examens(),
                          ),
                          );
                    },
                  ),
                ],
              ),
            ),
            // actuallite de la plateforme
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/fakenews.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Actualite',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Shedule(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            // faq
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/faq.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Faq',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Faq(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
            
            //  message
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey[600],
                    child: Image.asset(
                      'assets/image/message.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      color: Colors.black.withOpacity(0.6),
                      child: Text(
                        'Forum',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                   GestureDetector(// pour rediriger vers daure page
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forum(),
                          )
                          );
                    },
                  ),
                ],
              ),
            ),
          ],
          
        ),
        
      ),

      // bar de navigation de l'interface patient
    );
  }
}














/*SingleChildScrollView(
 padding: EdgeInsets.only(top: 40),
 child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Hello david",
          
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500
          ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/kitmedical.png"),
          ),
        ],
      ),
      )
  ],
 ),*/

