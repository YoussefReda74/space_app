import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'home_screen.dart';

class VenusDetails extends StatefulWidget {
  static const String routeName = 'v';
  const  VenusDetails({super.key});

  @override
  State<VenusDetails> createState() => _VenusDetailsState();
}

class _VenusDetailsState extends State<VenusDetails> {
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
                              'Venus',
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
                              'Venus: Earth''s Toxic Twin',
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
                  'assets/images/venus2.png',
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
                      'Venus is often referred to as Earth''s twin due to its similar'
                          ' size and composition. However, its thick atmosphere,'
                          ' composed primarily of carbon dioxide, traps heat,'
                          ' making it the hottest planet in our solar system. '
                          'This greenhouse effect has created a hostile environment with'
                          ' temperatures hot enough to melt lead. Venus is also shrouded in'
                          ' a thick layer of sulfuric acid clouds, which reflect sunlight and '
                          'give it a yellowish appearance.',
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
                    'Distance from Sun (km) : 108209072',
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
                    'Length of Day (hours) : 5832.2',
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
                    'Orbital Period (Earth years) : 0.62',
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
                    'Radius (km) : 6051.8',
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
                    'Mass (kg) : 4.867 × 10²⁴',
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
                    'Gravity (m/s²) : 8.87',
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
                    'Surface Area (km²) : 4.60 × 10⁸',
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
