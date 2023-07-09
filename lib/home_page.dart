import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:  AppBar(
        title: 
        const Center(
          child: Text("VULMS LOGIN"),
        ),
      ),
      
        body: Center( 
          child: Container(
           child: Text("Welcome to VULMS."),
         ),
        ),

        drawer: const Drawer(),
      );
  }
}