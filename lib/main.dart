import 'package:fazaa/pages/instructions_page.dart';
import 'package:fazaa/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Fazaa());
}

class Fazaa extends StatelessWidget {
   Fazaa({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: InstructionsPage(),
    );
  }
}

