// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/animation.dart';
import 'package:flutter_application_1/pages/acceuil_patient.dart';

class Pageconnexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Animations(
                delay: 1000,
                child: Container(
                  height: 280,
                  child: Image.asset('assets/image/aceeuil.png'),
                )),
            Animations(
                delay: 1000,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 30,
                  ),
                  child: Column(children: [
                    Text(
                      "Ici nous prenons soins de votre Sante et nous vous mettons en conctact avec des professionnels de la sante :",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.blueGrey,
                        fontSize: 15,
                      ),
                      
                    ),
                    
                 const   SizedBox(height: 10),
                    Text(    // ici l'utilisateur choisi avec quoi se connecter 
                      "se connecter avec:",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
                )),
            Animations(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 40,
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Aceuilpatient(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.red,
                            padding: EdgeInsets.all(13),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mail_lock_outlined),
                              Text(
                                'EMAIL',// ici doit etre creer la connexion ace email
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                   const   SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Aceuilpatient(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Color(0xFF576Dff),
                            padding: EdgeInsets.all(13),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(width: 10),
                              Text(
                                'FACEBOOK',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                  const    SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Aceuilpatient(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.white,
                            padding: EdgeInsets.all(13),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.google),
                              Text(
                                'GOOGLE',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                          ),
                    ],
                  ),
                )
                )
          ],
        ),
      ),
    );
  }
}
