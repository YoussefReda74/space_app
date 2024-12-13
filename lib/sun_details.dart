import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'home_screen.dart';

class SunDetails extends StatefulWidget {
  static const String routeName = 'sun';
 const  SunDetails({super.key});

  @override
  State<SunDetails> createState() => _SunDetailsState();
}

class _SunDetailsState extends State<SunDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0E0E0E),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    child: Transform.flip(
                      flipX: false,
                      flipY: true,
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset(
                          'assets/images/topImage.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 160,
                    child: Image.asset(
                      'assets/images/Rectangle5.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Row(

                        children: [
                          Container(
                            margin: EdgeInsets.all(16),
                            alignment: Alignment.topLeft,
                            width: 43,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xFFEE403D),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                              iconSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 99,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 14),
                            child: Text(
                              'sun',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 101, left: 20),
                            child: Text(
                              'The Sun: Our Solar System''s Star',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/sun2.png',
                  width: 343,
                  height: 343,
                ),
              ),
              Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 341,
                    height: 230,
                    child: Text(
                      'The Sun is the heart of our solar system, a massive ball'
                      ' of plasma that provides heat, light, and energy to '
                      'everything within its gravitational pull. Its immense'
                      ' size and temperature are fueled by nuclear fusion, a '
                      'process that combines hydrogen'
                      ' atoms into helium, releasing vast amounts of energy.'
                      ' The Sun'
                      's magnetic field, which is constantly changing, influences solar '
                      'activity like sunspots and solar flares, affecting space weather'
                      ' and potentially disrupting Earth-based technologies',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    'Distance from Sun (km) : 0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Length of Day (hours) : 0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Orbital Period (Earth years) : 0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Radius (km) : 695700',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Mass (kg) : 1.989 × 10³⁰',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Gravity (m/s²) : 274',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Surface Area (km²) : 6.09 × 10¹²',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
