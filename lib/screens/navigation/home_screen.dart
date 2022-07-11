// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/list_destionation.dart';
import 'package:travel_app/screens/booking_flight.dart';
import 'package:travel_app/widgets/destination_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF4093CE), Color(0xFF9BCEF3)],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/pexels-savannah-dematteo-2346735.jpg")))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Hi Tania !",
                        style: GoogleFonts.roboto(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xFFC0BEBE),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Where you want to \ngo?",
                style: GoogleFonts.roboto(
                  color: Color(0xFFFFFFFF),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                    width: 300,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF)),
                    child: TextField(
                      //textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24,
                            color: Color(0xFFBABABA),
                          ),
                          hintStyle: GoogleFonts.roboto(
                              color: Color(0xFFBBB7B7),
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                          hintText: "Search Flight"),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Text("Upcoming Trips",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BookingScreen();
                  }));
                },
                child: Container(
                  width: 320,
                  height: 154,
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xFF1C5E85), Color(0xCC5D8FAD)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("10 May,12:30 pm",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF))),
                            Text("11 May,8:15 am",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF)))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ABC",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 102,
                              height: 26,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 1.5,
                                    children: List.generate(
                                        5,
                                        (index) => Container(
                                              height: 5,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xFF95A5AE),
                                              ),
                                            )),
                                  ),
                                  Icon(
                                    CupertinoIcons.airplane,
                                    size: 23,
                                    color: Color(0xFF95A5AE),
                                  ),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 1.5,
                                    children: List.generate(
                                        5,
                                        (index) => Container(
                                              height: 5,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xFF95A5AE),
                                              ),
                                            )),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "XYZ",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFFADCEE1)),
                              child: Text(
                                "Abianca,Sodaium",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF3F7EA4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFFADCEE1)),
                              child: Text(
                                "Xyzaira, Filanto",
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Color(0xFF3F7EA4),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Popular Destinations",
                    style: GoogleFonts.roboto(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Wiew All",
                    style: GoogleFonts.roboto(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return DestinationCard(
                        destination: Destination.destinations[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
