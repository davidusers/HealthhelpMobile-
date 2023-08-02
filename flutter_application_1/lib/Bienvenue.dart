import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/animation.dart';
import 'package:flutter_application_1/main.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'pages/connexion.dart';
import 'package:flutter_application_1/pages/choix_utilisateur.dart';

class Bienvenue extends StatelessWidget {
  const Bienvenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 68,
            horizontal: 30,
          ),
          child: Column(children: [
            Animations(
              delay: 1000,
              child: Container(
                height: 190,
                child: Image.asset('assets/image/logo.png'),
                
              ),
            ),
            Animations(
              delay: 2000,
              child: Container(
                height: 400,
                child: Image.asset('assets/image/d.png'),
              ),
            ),
            Animations(
              delay: 2000,
              child: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child:  Text(
                  'bienvenue sur votre plateforme medicale vous pouvez commencer',
                  
                  
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Animations(
              delay: 4000,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: d_red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Text('Get Started'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Utilisateur(),
                        ));
                  },
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
