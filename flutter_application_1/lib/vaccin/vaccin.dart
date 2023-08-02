import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigationbar.dart';

// page dss kit de parametre vitaux

class Vaccin extends StatelessWidget {
  const Vaccin({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Vaccin'),
      ),
     body: const Text('Nos different Vaccin  ',
      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      
    );
    
  }
}
