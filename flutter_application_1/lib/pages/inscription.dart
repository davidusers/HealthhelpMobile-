import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/animation.dart';

class Inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
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
                    'renseigneir votre email',
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
         const       SizedBox(
                  height: 22
                ),
                Animations(
                  delay: 2500,
                  child: Text(
                    'svp renseigneir votre email et vos information personnelle ca aidera ladministrateurs a mieux connaitre vootre besoin',
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
           const  SizedBox(height: 35),

            LoginForm(),
         const   SizedBox(height: 125),
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
                  'CONFIRMER ',
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
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              ),
            ),
        const    SizedBox(height: 90),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 35),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Animations(
                    delay: 6500,
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {

  
  @override
  State<LoginForm> createState() => _LoginFormState();
  var _obscureText = true;
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
                labelText: 'your email',
                 border: OutlineInputBorder(),

                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
         const  SizedBox(height: 30),

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
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                       

                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

