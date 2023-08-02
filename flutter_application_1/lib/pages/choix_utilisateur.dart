import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/animation.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/connexion.dart';
import 'package:flutter_application_1/pages/inscription_medecin.dart';
import 'package:flutter_application_1/pages/inscription_patient.dart';



class Utilisateur extends StatelessWidget {
  const Utilisateur({super.key});

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
            const  SizedBox(height: 40),

            Animations(
              delay: 4000,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: d_red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(25),
                  ),
                  child: Text('Patient'),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InscriptionPatient(),
                              ),
                            );
                  },
                ),
              ),
            ),
            const  SizedBox(height: 50),

             Animations(
              delay: 4000,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: d_red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(25),
                  ),
                  child: Text('Medecin'),
                  onPressed: () {
                     Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InscriptionMedecin(),
                              ),
                            );
                   
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
