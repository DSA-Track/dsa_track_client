import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomeRightColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.5 - 109.0,
          padding: EdgeInsets.only(left: 20.0),
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(EvaIcons.settingsOutline),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(EvaIcons.bellOutline),
                    SizedBox(
                      width: 5.0,
                    ),
                    SizedBox(
                      height: 30.0,
                      width: 30.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1610273313191-1e96cd072c2e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height - 200,
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: AppTheme.rightSideBackColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Progress',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CURRENT/FRIDAY',
                                      style: TextStyle(
                                        fontSize: 9.0,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    Text(
                                      '58%',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 60.0,
                                  height: 30.0,
                                  padding: EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border: Border.all(
                                        color: AppTheme.rightSideBackColor,
                                        width: 2.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppTheme.color1,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Icon(
                                            Icons.stacked_line_chart_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(7.0),
                                          ),
                                          child: Icon(
                                            Icons.bar_chart_rounded,
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // ChartBar('MO',90,color2),
                          // ChartBar('TU',80,color2),
                          // ChartBar('WE',70,color2),
                          // ChartBar('TH',85,color1),
                          // ChartBar('FR',70,color2),
                          // ChartBar('SA',65,color2),
                          // ChartBar('SU',85,color2),
                        ],
                      ),
                      // Text(
                      //   'Other Functions',
                      //   style: GoogleFonts.nunitoSans(
                      //     fontSize: 16.0,
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      Text(
                        'Other Sheet Status',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5.0,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'System Files',
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 13.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            'December 2019',
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 11.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 50.0,
                                        color: Colors.black12,
                                      ),
                                      SleekCircularSlider(
                                        initialValue: 25,
                                        appearance: CircularSliderAppearance(
                                          size: 50.0,
                                          startAngle: -90,
                                          angleRange: 360,
                                          infoProperties: InfoProperties(
                                            mainLabelStyle: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          customWidths: CustomSliderWidths(
                                            progressBarWidth: 5.0,
                                            trackWidth: 5.0,
                                          ),
                                          customColors: CustomSliderColors(
                                            progressBarColor: AppTheme.color3,
                                            dotColor: AppTheme.color3,
                                            hideShadow: true,
                                            trackColor: AppTheme.voiletColor,
                                          ),
                                        ),
                                        onChange: (double value) {
                                          print(value);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: Container(
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: AppTheme.blueColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Applications',
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 13.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            'December 2019',
                                            style: GoogleFonts.nunitoSans(
                                              fontSize: 11.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 1.0,
                                        height: 50.0,
                                        color: Colors.white12,
                                      ),
                                      SleekCircularSlider(
                                          initialValue: 50,
                                          appearance: CircularSliderAppearance(
                                            size: 50.0,
                                            startAngle: -180,
                                            angleRange: 360,
                                            infoProperties: InfoProperties(
                                              mainLabelStyle: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.white),
                                            ),
                                            customWidths: CustomSliderWidths(
                                              progressBarWidth: 5.0,
                                              trackWidth: 5.0,
                                            ),
                                            customColors: CustomSliderColors(
                                              progressBarColor:
                                                  Color(0xffFFA000),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
