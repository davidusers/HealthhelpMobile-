// ignore_for_file: annotate_overrides, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigationbar.dart';

// page dss kit de parametre vitaux

class Medecinetraditionnel extends StatelessWidget {
  const Medecinetraditionnel({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Medecine traditionnel'),
      ),
     body: Center(
       child: Center(
         child: const Text('Nos service de la Medecinetraditionnel  ',
          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),
                          ),
       ),
     ),
    );
    
  }
}
