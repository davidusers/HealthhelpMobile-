import 'package:flutter/material.dart';


class Carnet extends StatelessWidget {
  const Carnet({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text('Le carnet du patient '),
      ),
     body: Text('Le carnet du patient'),
    );
    
  }
}
