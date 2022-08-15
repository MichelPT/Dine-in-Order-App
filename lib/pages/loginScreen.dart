import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: 
        ListView(
          children: [

            SizedBox(height:55),

            Padding(
              padding: EdgeInsets.all(30), 
              child: Text("Login",
                style: 
                  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
                textDirection: TextDirection.rtl,
                ),
              ),
              
            SizedBox(height:15),

            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))
                  )
                  ),
                style: 
                TextStyle(
                  decorationColor: Colors.blue,
                ),
                ),
              ),
              

            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))
                  )
                  ),
                style: 
                TextStyle(
                  decorationColor: Colors.blue,
                ),
                ),
              ),
          ],
        )
        )
    );
  }
}