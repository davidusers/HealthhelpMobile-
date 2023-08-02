import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/connexion.dart';


 class InscriptionPatient extends StatelessWidget {
  const InscriptionPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          title: Text('Inscription'),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.blue,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Animations(
                  delay: 1500,
                  child: Text(
                    'Inscrivez vous',
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                     textAlign: TextAlign.center,


                  ),
                  
                  
                ),
                SizedBox(
                  height: 22
                ),
                Animations(
                  delay: 2500,
                  child: Text(
                    'Nous vous remercions de votre confiances veuiller renseigner tout les champs possible',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                     textAlign: TextAlign.center,

                  ),
                  
                )
              ],
              ),
            ),
             SizedBox(height: 35),

            LoginForm(),
            SizedBox(height: 125),
           
           
          ],
        ),
      ),
    );
  }
}



class LoginForm extends StatefulWidget {

  
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          Animations(
            delay: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Nom',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
       const   SizedBox(height: 10),

           Animations(
            delay: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'email',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
      const    SizedBox(height: 10),

           Animations(
            delay: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Prenon',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
        const  SizedBox(height: 10),

           Animations(
            delay: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Date de naissance',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
       const   SizedBox(height: 10),

           Animations(
            delay: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Telephone',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
         const  SizedBox(height: 10),

          Animations(
            delay: 400,
            child: TextFormField(
              obscureText:true,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                 
                ),
                labelText: 'password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                       

                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

           Animations(
            delay: 400,
            child: TextFormField(
              obscureText:true,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                 
                ),
                labelText: 'confirmation de password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                       

                    });
                  },
                ),
              ),
            ),
          ),
         const  SizedBox(height: 30),

           Animations(
              delay: 5500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: d_red,
                  padding: EdgeInsets.symmetric(
                    horizontal: 125,
                    vertical: 13,
                  ),
                ),
                child: Text(
                  'Enregistrer  ',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pageconnexion(),
                    ),
                  );
                },
              ),
            ),
      const   SizedBox(height: 10),

          
        ],
      ),
    );
  }
}

