// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/main_screen.dart';
import 'package:travel_app/screens/navigation/home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 80, bottom: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 295,
              width: 304,
              child: Center(
                child: Image(image: AssetImage("assets/travel.png")),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(250)),
            ),
            SizedBox(
              height: 60,
            ),
            Text("Let's Enjoy A \nNew World",
                style: GoogleFonts.roboto(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
                maxLines: 3,
                textAlign: TextAlign.center),
            SizedBox(
              height: 40,
            ),
            Text(
              "Search the safest destination",
              style: GoogleFonts.roboto(
                color: Color(0xFF3F3F3F),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 50,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF2F7694),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
                child: Text(
                  "Get Started",
                  style: GoogleFonts.roboto(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF4093CE), Color(0xFF9BCEF3)])),
      ),
    );
  }
}
