import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/constants/route_constant.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: 
        ListView(
          children: [

            SizedBox(height:75),

            Container(
              child: Image.asset('assets/images/lemonia_logo.png',
              height: 200,
              )
            ),
              
            SizedBox(height:75),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: TextField(
                controller: _emailController,
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
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: Colors.blueGrey,
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

              Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: ElevatedButton(
                onPressed:() {
                  _firebaseAuth..signInWithEmailAndPassword(
                    email: _emailController.text, 
                    password: _passwordController.text
                    );
                  Get.toNamed(PagesRoute.homePage);
                },
                child:Text("Login",
                style: TextStyle(
                  fontSize: 15
                ),),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                  fixedSize: MaterialStateProperty.all(Size(80, 50))
              ) 
              )
              ),

              Center(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet?",
                  style: TextStyle(
                    fontSize: 16
                  )
                  ),
                  TextButton(
                    onPressed:() {
                      Get.toNamed(PagesRoute.registerPage);
                    },
                    child:Text("Register now!",
                     style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )))
                ],
              )
              )
              
          ],
        )
        )
    );
  }
}