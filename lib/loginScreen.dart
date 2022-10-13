import 'package:flutter/material.dart';
import 'package:startup_namer/main.dart';
import 'Track.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9C25F4),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(
                Icons.calendar_month_rounded,
                size: 100,
              ),
              SizedBox(height: 20,),
              const Text("Hello ClueApp",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontSize: 30),),
              SizedBox(height: 20,),
              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration:BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)
                  ) ,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              //password textfield
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration:BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)
                  ) ,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              //signing button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color(0xFFf4a825),
                    borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Text("Sign in",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                      ),
                    ),
                ),
                ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? ",
                  style: TextStyle(
                    color: Color(0xFF3A0EA8),
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("Register now",style: TextStyle(
                      color: Colors.grey[200],
                      fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],

          ),

        ),
      ),
    );
  }
}
