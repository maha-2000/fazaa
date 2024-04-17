import 'package:fazaa/constants.dart';
import 'package:fazaa/pages/donations_page.dart';
import 'package:fazaa/pages/instructions.dart';
import 'package:fazaa/pages/map_page.dart';
import 'package:fazaa/pages/onboarding_page.dart';
import 'package:fazaa/pages/reporting_page.dart';
import 'package:fazaa/pages/splash_page.dart';
import 'package:fazaa/tab_bar_screen.dart';
import 'package:fazaa/tab_item_instructions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';


void main() {
  runApp(  const Fazaa());
}

class Fazaa extends StatelessWidget {
   const Fazaa({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // locale: Locale('ar'),
      // supportedLocales: [
      //   Locale('ar'),
      // ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "AmiriR",
      ),
      home:  const SplashPage(),
    );
  }
}


