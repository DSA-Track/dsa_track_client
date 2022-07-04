import 'package:dsa_tracker/pages/dashboard/dashboard.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SheetCard extends StatefulWidget {
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
  State<SheetCard> createState() => _SheetCardState();
}

class _SheetCardState extends State<SheetCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: widget.color, //AppTheme.voiletColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.raleway(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '${widget.question} Questions',
                      style: GoogleFonts.quicksand(
                          fontSize: 15.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppTheme.whiteColor,
                      ),

                      //Dimensions of white box with Q.s done
                      child: Text(
                        '50',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
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
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // FAProgressBar(
              //   currentValue: 15,
              //   size: 25,
              //   maxValue: 150,
              //   changeColorValue: 100,
              //   changeProgressColor: Colors.pink,
              //   backgroundColor: Colors.white,
              //   progressColor: Colors.lightBlue,
              //   animatedDuration: const Duration(milliseconds: 300),
              //   direction: Axis.horizontal,
              //   verticalDirection: VerticalDirection.up,
              //   displayText: 'mph',
              //   formatValueFixed: 2,
              // ),
              // ProgressBar(),
              // LinearProgressBar(
              //   maxSteps: 450,
              //   progressType: LinearProgressBar.progressTypeLinear,
              //   currentStep: 50, //currentStep,
              //   progressColor: Colors.white,
              //   backgroundColor: Colors.white.withOpacity(0.2),
              //   // valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              //   semanticsValue: "value",
              // ),
              //START button
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Row(
                  children: [
                    Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      EvaIcons.arrowheadRight,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class ProgressBar extends StatelessWidget {
//   const ProgressBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: LinearProgressBar(
//           maxSteps: 450,
//           progressType: LinearProgressBar.progressTypeLinear,
//           currentStep: 50, //currentStep,
//           progressColor: Colors.white,
//           backgroundColor: Colors.white.withOpacity(0.2),
//           // valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
//           semanticsValue: "value",
//         ),
//       ),
//     );
//   }
// }
