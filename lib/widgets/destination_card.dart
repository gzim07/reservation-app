import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/list_destionation.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;
  const DestinationCard({Key? key, required this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: 96,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Positioned(
            top: 2,
            left: 2,
            right: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(destination.img)),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 108,
            )),
        Positioned(
            top: 122,
            left: 10,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.city,
                  style: GoogleFonts.roboto(
                      color: Color(0xFF5A5A5A),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  destination.country,
                  style: GoogleFonts.roboto(
                      color: Color(0xFFACABAB),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                )
              ],
            )),
      ]),
    );
  }
}
