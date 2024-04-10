import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.deepPurpleAccent,
            color: Colors.white38,
            //animationDuration: Duration(seconds: 1),
            onTap: (value) {
              // print(value);
            },
            items: const [
              Icon(Icons.home,),
              Icon(Icons.widgets),
              Icon(Icons.report),
              Icon(Icons.integration_instructions),
            ],
          ),
        );
  }
}
