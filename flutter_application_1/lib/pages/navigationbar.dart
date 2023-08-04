// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';



class bottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        
      ),
      
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0; //changement de la page de la page de navigation
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentIndex(index), 
        // 
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        iconSize: 32,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: 'Calendrier'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_back), label: 'Consultation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: 'Plus'),
        ],
      ),
    );
  }
}


/*// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/util/emojie_c.dart';
import 'package:flutter_application_1/list_doct.dart';


class Consultation extends StatefulWidget {
  const Consultation({super.key});

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Column(
          children: [
            //ligne de salutation
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                // hi david
                Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      
                      child: Text('Hi David', 
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    SizedBox(height: 8,
                    ),
                    Text('5 juiellet 2023',
                    style: TextStyle(color: Colors.blue[200]),
                    ),
                  ],
                ),
                
            
                //notification
                Container(
                  decoration: BoxDecoration(color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                  
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.notifications)
                  )
              ],
            ),
            SizedBox(height: 25,),
            // bar de recherche 
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(12),
              child: Row(children: [Icon(Icons.search),
              SizedBox(height: 20,),
              Text('Search',
              style: TextStyle(
                color: Colors.black,
              ),
              ),

              ],
              
              ),
            ),
             SizedBox(height: 25,),
             // text comment allez vous

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Comment allez vous', 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Icon(Icons.more_horiz),
               ],
             ),
               SizedBox(height: 25,
               ),
               // 4 differnte reaction
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                // bad
                Column(
                  children: [
                    Reaction(
                      emoticonFace:'😃',
                    ),
                    SizedBox(height: 8,
                    
                    ),

                    Text('Bad',
                    style:TextStyle(color: Colors.black) ,
                    
                    ),  ],
                ),

                //fine
                Column(
                  children: [
                    Reaction(
                      emoticonFace:'🤪',
                    ),
                    SizedBox(height: 8,
                    
                    ),

                    Text('fine',
                    style:TextStyle(color: Colors.black) ,
                    
                    ),

                  ],
                ),



                //exelle
                 Column(
                  children: [
                    Reaction(
                      emoticonFace:'😎',
                    ),
                    SizedBox(height: 8,
                    
                    ),

                    Text('fine',
                    style:TextStyle(color: Colors.black) ,
                    
                    ),

                  ],
                ),
                //exwellent

                 Column(
                  children: [
                    Reaction(
                      emoticonFace:'🧠',
                    ),
                    SizedBox(height: 8,
                    
                    ),

                    Text('fine',
                    style:TextStyle(color: Colors.black) ,
                    
                    ),

                  ],
                ),


               ],
               ),
               SizedBox(height: 20,
               ),
               Expanded(
                 child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // consultation 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Nos medecin ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(height: 12,),
                        // vue liste des medecin disponible
                       
                       Expanded(
                         child: ListView(
                          children: [
                            Listdocteur(
                                icon:Icons.person,
                            docteurName: 'Dr  Alain du bois',
                            numeroDocteur:1,
                            color: Colors.orangeAccent,
                             ),
                              Listdocteur(
                                icon:Icons.person_2,
                            docteurName: ' Dr franck ',
                            numeroDocteur:12,
                            color: Colors.grey,
                             ),
                              Listdocteur(
                                icon:Icons.person_2,
                            docteurName: ' Dr yambi',
                            numeroDocteur:8,
                            color: Colors.blue,
                             ),
                             Listdocteur(
                                icon:Icons.person_2,
                            docteurName: ' Dr sam',
                            numeroDocteur:8,
                            color: Colors.blue,
                             ),
                             Listdocteur(
                                icon:Icons.person_2,
                            docteurName: ' Dr Babdi',
                            numeroDocteur:8,
                            color: Colors.blue,
                             ),
                             Listdocteur(
                                icon:Icons.person_2_rounded,
                            docteurName: ' Dr Herlot',
                            numeroDocteur:8,
                            color: Colors.blue,
                             ),
                             Listdocteur(
                                icon:Icons.person_4,
                            docteurName: ' Dr Sam',
                            numeroDocteur:8,
                            color: Colors.blue,
                             ),
                            
                          ],
                         ),
                       ),
                      ],
                  
                    ),
                  ),
                  
                 ),
               ),
          ],
        ),
      ),
    );
  }
}
*/