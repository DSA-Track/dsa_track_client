import 'package:dsa_tracker/pages/home/homeMC.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../shared_components/sheetCard.dart';

class MidColumn extends StatelessWidget {
  const MidColumn({
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
            return Container(
              child: HomeMiddleColumn(controller: controller),
            );
          // ListView(
          //   children: [
          //     HomeMiddleColumn(controller: controller),
          //   ],
          // );
          case 1:
            return Text(
              'Search',
              style: theme.textTheme.headline5,
            );
          case 2:
            return Text(
              'People',
              style: theme.textTheme.headline5,
            );
          case 3:
            return Text(
              'Favorites',
              style: theme.textTheme.headline5,
            );
          case 4:
            return Text(
              'Custom iconWidget',
              style: theme.textTheme.headline5,
            );
          default:
            return Text(
              'Not found page',
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}
