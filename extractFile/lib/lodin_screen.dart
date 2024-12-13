import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName='/';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0E0E0E),
        body: Stack(
          children: [
            Positioned(
              top: 33,
              left: -398,
              child: Container(
                height: 748,
                width: 740,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/login_planet.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Positioned(
                  top: 310,
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 190,
                    width: 265,
                    child: Text(
                      'Explore\nThe\nUniverse ',
                      style: TextStyle(fontSize: 48, color: Colors.white,
                          fontWeight: FontWeight.w700),

                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                   Navigator.pushNamed(context,PlanetView.routeName);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFFEE403D),
                    ),
                    margin: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}