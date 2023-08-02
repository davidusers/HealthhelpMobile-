import 'package:flutter/material.dart';
// page dss kit de parametre vitaux

class Conseil extends StatelessWidget {
  const Conseil({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: const Text('Conseil sante '),
      ),
     body: const Text('Nos Conseil  ',
      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
    );
    
  }
}
