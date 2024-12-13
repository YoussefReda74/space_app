import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanetPage extends StatelessWidget {
  String name;
  String image;
  String buttonText;
  VoidCallback? onTapIconBack;
  VoidCallback? onTapIconNext;
  VoidCallback? onButtoTap;
   PlanetPage({
     required this.image,required this.name
     ,required this.buttonText, this.onTapIconNext
     ,this.onTapIconBack,
     this.onButtoTap,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 342,
          height: 339,
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFEE403D),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: IconButton(
                onPressed: onTapIconBack,
                icon: Icon(Icons.arrow_back),
                color: Colors.white,

              ),
            ),
            Spacer(),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(16),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFEE403D),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: IconButton(
                onPressed:onTapIconNext,
                icon: Icon(Icons.arrow_forward),
                color: Colors.white,

              ),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: onButtoTap,
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
                  'Explore $name',
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
    );
  }
}
