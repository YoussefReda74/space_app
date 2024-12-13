import 'package:flutter/material.dart';
import 'package:space_app/saturn_details.dart';
import 'package:space_app/sun_details.dart';
import 'package:space_app/uranus_details.dart';
import 'package:space_app/venus_details.dart';

import 'Jupiter_details.dart';
import 'earth_details.dart';
import 'home_screen.dart';
import 'lodin_screen.dart';
import 'mars_details.dart';
import 'mercury_details.dart';
import 'neptune_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       initialRoute:LoginScreen.routeName ,
       routes: {
         LoginScreen.routeName:(context)=>LoginScreen(),
         PlanetView.routeName:(context)=>PlanetView(),
         EarthDetails.routeName:(context)=>EarthDetails(),
         JupiterDetails.routeName:(context)=>JupiterDetails(),
         MarsDetails.routeName:(context)=>MarsDetails(),
         MercuryDetails.routeName:(context)=>MercuryDetails(),
         SaturnDetails.routeName:(context)=>SaturnDetails(),
         SunDetails.routeName:(context)=>SunDetails(),
         UranusDetails.routeName:(context)=>UranusDetails(),
         VenusDetails.routeName:(context)=>VenusDetails(),
         NaptuneDetails.routeName:(context)=>NaptuneDetails(),
       },
    );
  }
}

