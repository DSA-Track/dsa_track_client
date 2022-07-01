import 'package:dsa_tracker/pages/dashboard/components/MiddleColumn/home/searchBar.dart';
import 'package:dsa_tracker/pages/dashboard/components/MiddleColumn/home/searchBar.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import 'home/sheetCard.dart';

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
            return Scaffold(
                body: ListView(
              children: [
                SearchBar(),
                SizedBox(height: 25.0),
                Heading(),
                SizedBox(height: 16.0),
                SheetList(),
              ],
            )
                //   ListView.builder(
                // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // itemBuilder: (context, index) => SearchBar(),
                // )
                // ListView.builder(
                //   padding: const EdgeInsets.only(top: 10),
                //   itemBuilder: (context, index) => Container(
                //     height: 100,
                //     width: double.infinity,
                //     margin: const EdgeInsets.only(bottom: 10, right: 10),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: AppTheme.light.cardColor,
                //       boxShadow: const [BoxShadow()],
                //     ),
                //   ),
                // ),
                );
          case 1:
            return Text(
              'S',
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
