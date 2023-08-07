// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/views/chat_Sample.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF7165D6),
          leadingWidth: 30,
          title: const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/image/doct1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Dr name",
                style: TextStyle(
                  color: Colors.white,
                ),),
                ),
                
              ],
            ),
          ),
          actions: [
            const Padding(padding: EdgeInsets.only(top: 8, right: 15),
            child: Icon(Icons.call, color: Colors.white,size: 26,),
            ),
             const Padding(padding: EdgeInsets.only(top: 8, right: 10),
            child: Icon(Icons.video_call, color: Colors.white,size: 26,),
            ),
             const Padding(padding: EdgeInsets.only(top: 8, right: 10),
            child: Icon(Icons.more_vert, color: Colors.white,size: 26,),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 80),
        itemBuilder: (context,index) => ChatSample(),
      ),
    );
  }
}
