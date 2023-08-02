// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plus extends StatelessWidget {
  const Plus({super.key});

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: [
          Text(" Parametre",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          SizedBox(height: 20),
          // PROFILE 
          ListTile(
            leading: CircleAvatar(radius: 30,
            backgroundImage: AssetImage("assets/image/dav.jpg"),
            ),
            title: Text("DR. Doctor name",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          subtitle: Text("profile"),
          ),
         SizedBox(height: 20),

          // notification 
          Divider(height: 50),
          ListTile(
          onTap: () {},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blue.shade100,
            shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              color: Colors.deepPurple,
              size: 35,
            ),
          ),
          title: Text(" Profils",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),

        ),
         SizedBox(height: 20),

         ListTile(
          onTap: () {},
          leading: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blue.shade100,
            shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.deepPurple,
              size: 35,
            ),
          ),
          title: Text(" notifications",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),

        ),
          //
          SizedBox(height: 20),
           ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue.shade100,
              shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.privacy_tip,
                color: Colors.blue,
                size: 35,
              ),
            ),
            title: Text(
              "privacy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
    
          ),
          ///
          SizedBox(height: 20),
           ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue.shade100,
              shape: BoxShape.circle,
              ),
              child: Icon(
               Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 35,
              ),
            ),
            title: Text(" general",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
    
          ),
          /// about us
          SizedBox(height: 20),
           ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.blue.shade100,
              shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.orange.shade100,
                size: 35,
              ),
            ),
            title: Text(" About Us ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
    
          ),
          ///
    Divider(height: 40),
     ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.redAccent.shade100,
              shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.logout,
                color: Colors.red,
                size: 35,
              ),
            ),
            title: Text(" deconnexion",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
    
          ),
    
          ///
          
    
        ],
        ),
      
      ),
    );
  }
}
