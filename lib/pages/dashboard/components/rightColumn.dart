import 'package:dsa_tracker/pages/Q_Calculator/Q_MC.dart';
import 'package:dsa_tracker/pages/Q_Calculator/Q_RC.dart';
import 'package:dsa_tracker/pages/home/homeRC.dart';
import 'package:dsa_tracker/pages/progress/progressRC.dart';
import 'package:dsa_tracker/pages/sheets/sheetRC.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../shared_components/sheetCard.dart';

class RightColumn extends StatelessWidget {
  const RightColumn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return
                // ListView(
                //   children: [HomeRightColumn()],
                // );
                Container(
              child: HomeRightColumn(),
            );
          // ListView.builder(
          // padding: const EdgeInsets.only(top: 30),
          // itemBuilder: (context, index) => Container(
          //   height: 100,
          //   width: double.infinity,
          //   margin: const EdgeInsets.only(bottom: 10, right: 10),

          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20),
          //   color: Theme.of(context).canvasColor,
          //   boxShadow: const [BoxShadow()],
          // ),

          case 1:
            return SheetRightColumn(controller: controller);
          //   return Text(
          //   'Sheet ',
          //   style: theme.textTheme.headline5,
          // );

          case 2:
            // return Q_RightColumn();
            return Text(
              'Questions/Day',
              style: theme.textTheme.headline5,
            );
          case 3:
            return Text(
              'Bookmark',
              style: theme.textTheme.headline5,
            );

          case 4:
            // return ProgressRightColumn(controller: controller);
            return Text(
              'Progress',
              style: theme.textTheme.headline5,
            );

          default:
            return Text(
              'About us',
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}
