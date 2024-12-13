import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'home_screen.dart';

class EarthDetails extends StatefulWidget {
  static const String routeName = 'E';
  const EarthDetails({super.key});

  @override
  State<EarthDetails> createState() => _EarthDetailsState();
}

class _EarthDetailsState extends State<EarthDetails> {
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
                              'Earth',
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
                              'Earth: Our Blue Marble',
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
                  'assets/images/earth_3d.png',
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
                      'Earth is the only known planet in the universe'
                      'that supports life. Its unique'
                      'combination of factors,'
                      ' including liquid'
                      'water, a breathable atmosphere, and'
                      ' suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth'
                      's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
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
                    'Distance from Sun (km) : 149598026',
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
                    'Length of Day (hours) : 23.93',
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
                    'Orbital Period (Earth years) : 1',
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
                    'Radius (km) : 6371',
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
                    'Mass (kg) : 5.972 × 10²⁴',
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
                    'Gravity (m/s²) : 9.81',
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
                    'Surface Area (km²) : 5.10 × 10⁸',
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
