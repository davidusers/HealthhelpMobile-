// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EvenementAvenir extends StatelessWidget {
  const EvenementAvenir({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Apropos au   Docteur",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
           SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                 BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:  Column(
                children: [
                  ListTile(
                    title: Text("Dr. Doctor Name ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    subtitle: Text("generalist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/image/doct2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     
                      Icon(Icons.calendar_month,
                      color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "12/01/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    
                    children: [
                       Row(
                        children: [
                           Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                    ),
                     SizedBox(width: 5),
                    Text("10:39 PM",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                    ),
                        ],
                      ),
                   
                   
                  ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("comfirmed",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child:Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        
                        child: Center(
                          child: Text("Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          ),
                        ),
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child:Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        
                        child: Center(
                          child: Text("rendevous",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                        ),
                      ),
                      ),   
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
              
              ),
            ),
            Text("Apropos au   Docteur",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                 BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:  Column(
                children: [
                  ListTile(
                    title: Text("Dr. Doctor Name ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    subtitle: Text("generalist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/image/doct2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     
                      Icon(Icons.calendar_month,
                      color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "12/01/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                           Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                    ),
                     SizedBox(width: 5),
                    Text("10:39 PM",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                    ),
                        ],
                      ),
                   
                   
                  ],
                  ),
                  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("comfirmed",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          
                        },
                        child:Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        
                        child: Center(
                          child: Text("Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                        ),
                      ),
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child:Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(0xFF7165D6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        
                        child: Center(
                          child: Text("rendevous",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                        ),
                      ),
                      ),   
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
              
              ),
            ),
            SizedBox(height: 20),

        ],
          ),
        
       
    
    );
  }
}