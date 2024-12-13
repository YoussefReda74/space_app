import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'home_screen.dart';

class JupiterDetails extends StatefulWidget {
  static const String routeName = 'j';
  const  JupiterDetails({super.key});

  @override
  State<JupiterDetails> createState() => _JupiterDetailsState();
}

class _JupiterDetailsState extends State<JupiterDetails> {
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
                              'Jupiter',
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
                              'Jupiter: The Gas Giant',
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
                  'assets/images/jupiter2.png',
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
                      'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
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
                    'Distance from Sun (km) : 778547669',
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
                    'Length of Day (hours) : 9.92',
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
                    'Orbital Period (Earth years) : 11.86',
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
                    'Radius (km) : 69911',
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
                    'Mass (kg) :1.898 × 10²⁷',
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
                    'Gravity (m/s²) : 24.79',
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
                    'Surface Area (km²) : 6.21 × 10¹⁵',
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
