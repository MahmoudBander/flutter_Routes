// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[300],
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home,color: Colors.blue[500]),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Log in",
          style: TextStyle(color: Colors.white, fontSize: 30,fontFamily: "myfoont",fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.purple[100],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 300,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.blue[500],),
                  hintText: "your Email:",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: Colors.blue[500]),
                  hintText: "Password:",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility,color: Colors.blue[500]),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 110, vertical: 20)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55))),
              ),
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
