import 'package:flutter/material.dart';
import 'package:vulms/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/loginimage.png", fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
             Text(
              "Welcome $name",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      
                    });
                  },
      
                ),
      
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
      
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  }
                ),
      
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}