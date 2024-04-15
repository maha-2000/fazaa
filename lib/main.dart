import 'package:fazaa/constants.dart';
import 'package:fazaa/pages/donations_page.dart';
import 'package:fazaa/pages/home_page.dart';
import 'package:fazaa/pages/instructions_page.dart';
import 'package:fazaa/pages/map_page.dart';
import 'package:fazaa/pages/onboarding_page.dart';
import 'package:fazaa/pages/splash_page.dart';
import 'package:fazaa/tab_bar_screen.dart';
import 'package:flutter/material.dart';
import 'donations_form.dart';


void main() {
  runApp( const Fazaa());
}

class Fazaa extends StatelessWidget {
   const Fazaa({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first App",
      home: SplashPage(),
    );
  }
}


