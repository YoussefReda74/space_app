import 'package:flutter/material.dart';
import 'package:space_app/Jupiter_details.dart';
import 'package:space_app/mars_details.dart';
import 'package:space_app/mercury_details.dart';
import 'package:space_app/planets_category.dart';
import 'package:space_app/saturn_details.dart';
import 'package:space_app/sun_details.dart';
import 'package:space_app/uranus_details.dart';
import 'package:space_app/venus_details.dart';

import 'earth_details.dart';
import 'neptune_details.dart';

class PlanetView extends StatefulWidget {
  static const String routeName = 'x';
  @override
  _PlanetViewState createState() => _PlanetViewState();
}

class _PlanetViewState extends State<PlanetView> {
  final List<Map<String, String>> planets = [
    {
      'name': 'Earth',
      'image': 'assets/images/earth2.png',
    },
    {
      'name': 'Mars',
      'image': 'assets/images/mars2.png',
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter2.png',
    },
    {
      'name': 'mercury',
      'image': 'assets/images/mercury2.png',
    },
    {
      'name': 'neptune',
      'image': 'assets/images/neptune2.png',
    },
    {
      'name': 'saturn',
      'image': 'assets/images/saturn2.png',
    },
    {
      'name': 'sun',
      'image': 'assets/images/sun2.png',
    },
    {
      'name': 'uranus',
      'image': 'assets/images/uranus2.png',
    },
    {
      'name': 'venus',
      'image': 'assets/images/venus2.png',
    },
  ];
  final PageController pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0E0E0E),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 237,
                  child: Transform.flip(
                    flipX: false,
                    flipY: true,
                    child: Image.asset(
                      'assets/images/topImage.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 237,
                  child: Image.asset(
                    'assets/images/Rectangle5.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 24),
                          child: Text(
                            'Explore',
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
                          padding: EdgeInsets.only(top: 118, left: 20),
                          child: Text(
                            'Which planet\nwould you like to explore?',
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
              height: 24,
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: planets.length,
                onPageChanged: (index) {
                  setState(
                    () {
                      pageIndex = index;
                    },
                  );
                },
                itemBuilder: (context, index) {
                  var planet = planets[index];
                  return PlanetPage(
                    name: planet['name']!,
                    image: planet['image']!,
                    buttonText: planet['name']!,
                    onTapIconBack: () {
                      if (pageIndex > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOutExpo,
                        );
                      }
                    },
                    onTapIconNext: () {
                      if (pageIndex < planets.length - 1) {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOutExpo,
                        );
                      }
                    },
                    onButtoTap: () {
                      if (planet['name'] == 'Earth') {
                        Navigator.pushNamed(context, EarthDetails.routeName);
                      }else if (planet['name'] == 'Mars') {
                        Navigator.pushNamed(context, MarsDetails.routeName);
                      }else if (planet['name'] == 'Jupiter') {
                        Navigator.pushNamed(context, JupiterDetails.routeName);
                      }else if (planet['name'] == 'sun') {
                        Navigator.pushNamed(context, SunDetails.routeName);
                      }else if (planet['name'] == 'mercury') {
                        Navigator.pushNamed(context, MercuryDetails.routeName);
                      }else if (planet['name'] == 'saturn') {
                        Navigator.pushNamed(context, SaturnDetails.routeName);
                      }else if (planet['name'] == 'uranus') {
                        Navigator.pushNamed(context, UranusDetails.routeName);
                      }else if (planet['name'] == 'venus') {
                        Navigator.pushNamed(context, VenusDetails.routeName);
                      }else if (planet['name'] == 'neptune') {
                        Navigator.pushNamed(context, NaptuneDetails.routeName);
                      }
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
