import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/loginimage.png", fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize:24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
           Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          
          
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "UserName",
                ),

              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                
                onPressed: () {
                  print("Pressed");
                }
              ),

            ],
          ),
          ),
        ],
      ),
    );
  }
}