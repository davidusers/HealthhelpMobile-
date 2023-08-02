import 'package:flutter/material.dart';
// page dss kit de parametre vitaux

class Medecinechinoise extends StatelessWidget {
  const Medecinechinoise({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Medecinechinoise'),
      ),
     body: const Text('Nos service de la Medecinechinoise  ',
      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
    );
    
  }
}
