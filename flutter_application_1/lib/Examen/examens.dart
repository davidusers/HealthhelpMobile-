import 'package:flutter/material.dart';
// page dss kit de parametre vitaux

class Examens extends StatelessWidget {
  const Examens({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Examens de laboratoire '),
      ),
     body: const Text('Nos Examens disponible  ',
      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
    );
    
  }
}
