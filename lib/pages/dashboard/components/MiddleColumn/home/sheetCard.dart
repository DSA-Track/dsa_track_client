import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetList extends StatelessWidget {
  const SheetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Heading(),
          SheetCard(name: '', color: null, question: ''),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Choose your Sheet ',
        style: GoogleFonts.raleway(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SheetCard extends StatelessWidget {
  // const SheetCard({Key? key}) : super(key: key);
  final String name;
  final String question;
  final Color? color;
  SheetCard({
    required this.name,
    required this.question,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.voiletColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.raleway(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    '$question Questions',
                    style: GoogleFonts.quicksand(
                        fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    //Dimensions of white box with Q.s done
                    child: Text(
                      '5',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  ),
                  Text(
                    'Q.s Done',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
              // ProgressBar();
              //START button
              ),
        ],
      ),
    );
  }
}
