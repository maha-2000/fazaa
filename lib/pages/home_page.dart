import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fazaa/constants.dart';
import 'package:fazaa/pages/map_page.dart';
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
          backgroundColor: kPrimaryColor,
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: kPrimaryColor,
            color: Colors.white24,
            animationDuration: const Duration(seconds: 1),
            onTap: (value) {
              if(value == 0){

              }
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
