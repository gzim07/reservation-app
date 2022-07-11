// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/list_destionation.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  List<String> countries = ["Amsterdam", "Alps", "Paris", "Venice"];
  String dropdownValue = "Amsterdam";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF4093CE), Color(0xFF9BCEF3)])),
        child: Stack(
          children: [
            Positioned(
                top: -46,
                left: -76,
                right: -76,
                child: ClipOval(
                  child: Container(
                    height: 340,
                    decoration: BoxDecoration(color: Color(0xffffffff)),
                  ),
                )),
            Positioned(
                top: 60,
                left: 50,
                child: Image(
                  image: AssetImage("assets/undraw_aircraft_fbvl 1.png"),
                )),
            Positioned(
              top: 335,
              left: 0,
              right: 0,
              bottom: 20,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book your flight",
                        style: GoogleFonts.roboto(
                            fontSize: 28,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFD7EAF8),
                            borderRadius: BorderRadius.circular(10)),
                        child: TabBar(
                            unselectedLabelColor: Color(0xFFACACAC),
                            labelColor: Color(0xFFFFFFFF),
                            controller: _tabcontroller,
                            labelStyle: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            indicator: BoxDecoration(
                                color: Color(0xFF2F7694),
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [Text("One Way"), Text("Round Trip")]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 264,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child:
                            TabBarView(controller: _tabcontroller, children: [
                          Container(
                            height: MediaQuery.of(context).size.height - 30,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _textBooking(text: "FROM"),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 10, top: 2, bottom: 2),
                                  decoration: BoxDecoration(
                                      color: Color(0XFFE0EDF6),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      color: Color(0xFF505050),
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    value: dropdownValue,
                                    items: countries
                                        .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                          value: value, child: Text(value));
                                    }).toList(),
                                  ),
                                ),
                                _textBooking(text: "TO"),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 10, top: 2, bottom: 2),
                                  decoration: BoxDecoration(
                                      color: Color(0XFFE0EDF6),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: DropdownButton(
                                    underline: SizedBox(),
                                    style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      color: Color(0xFF505050),
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    value: dropdownValue,
                                    items: countries
                                        .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                          value: value, child: Text(value));
                                    }).toList(),
                                  ),
                                ),
                                _textBooking(text: "Date"),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  width: double.infinity,
                                  child: Text(
                                    "10 May, 12:30 PM",
                                    style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      color: Color(0xFF505050),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0XFFE0EDF6)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Color(0xFF2F7694)),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "View Flights",
                                      style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFFFFFFF)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height - 30,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFFFFFFF)),
                          ),
                        ]),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  _textBooking({required String text}) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, color: Color(0xFF858484)),
    );
  }
}
