import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../theme/app_theme.dart';

class SheetCard2 extends StatelessWidget {
  // const SheetCard2({Key? key}) : super(key: key);
  final String name;
  final int question;
  final int percentage;
  final Color color;

  SheetCard2({
    required this.name,
    required this.question,
    required this.percentage,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: Expanded(
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: AppTheme.blueColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '$question Questions',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Container(
                width: 1.5,
                height: 80.0,
                color: Colors.white12,
              ),
              SleekCircularSlider(
                  initialValue: 56,
                  appearance: CircularSliderAppearance(
                    size: 50.0,
                    startAngle: -180,
                    angleRange: 360,
                    infoProperties: InfoProperties(
                      mainLabelStyle:
                          TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 6.0,
                      trackWidth: 6.0,
                    ),
                    customColors: CustomSliderColors(
                      progressBarColor: Color(0xffFFA000),
                      dotColor: Color(0xffFFA000),
                      hideShadow: true,
                      trackColor: Color(0xff5C5FB2),
                    ),
                  ),
                  onChange: (double value) {
                    print(value);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
