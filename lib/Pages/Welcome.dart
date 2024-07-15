// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        backgroundColor: const Color.fromARGB(255, 224, 141, 238),
        centerTitle: true,
        title: Text(
          "Welcome",
          style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "myfoont",fontWeight: FontWeight.w500),
        ),
      ),
      body:Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/login");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 105, vertical: 20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55))),
            ),
            child: Text(
              "Log in",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/logup");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 235, 177, 245)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 105, vertical: 20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55))),
            ),
            child: Text(
              "Sing up",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          ],
        ),
      ), 

    );
  }
}
