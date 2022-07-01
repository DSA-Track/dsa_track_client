import 'package:dsa_tracker/pages/dashboard/components/MiddleColumn/midColumn.dart';
import 'package:dsa_tracker/pages/dashboard/components/rightColumn.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: _controller,
            theme: SidebarXTheme(
              // height: 1,

              padding: EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 0, right: 6),
              decoration: BoxDecoration(
                color: AppTheme.light.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              textStyle: const TextStyle(color: Colors.white),
              selectedTextStyle: const TextStyle(color: Colors.white),
              itemTextPadding: const EdgeInsets.only(left: 30),
              selectedItemTextPadding: const EdgeInsets.only(left: 20),
              itemDecoration: BoxDecoration(
                border: Border.all(color: AppTheme.light.primaryColor),
              ),

              selectedItemDecoration: BoxDecoration(
                // color: AppTheme.light.canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                border: Border.all(
                  color: AppTheme.yellowColor.withOpacity(0.5),
                ),
                gradient: LinearGradient(
                  colors: [
                    AppTheme.light.secondaryHeaderColor,
                    AppTheme.light.secondaryHeaderColor
                  ],
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.28),
                //     blurRadius: 30,
                //   )
                // ],
              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
                size: 20,
              ),
            ),
            extendedTheme: const SidebarXTheme(
              width: 200,
              decoration: BoxDecoration(
                color: canvasColor,
              ),
              margin: EdgeInsets.only(right: 10),
            ),
            // footerDivider: divider,
            headerBuilder: (context, extended) {
              return SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child:
                      Image.asset('assets/images/dsa_tracker_logo_white.png'),
                ),
              );
            },
            items: [
              SidebarXItem(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  debugPrint('Hello');
                },
              ),
              const SidebarXItem(
                icon: EvaIcons.fileTextOutline,
                label: 'Sheets',
              ),
              const SidebarXItem(
                icon: EvaIcons.bookmarkOutline,
                label: 'Bookmark',
              ),
              const SidebarXItem(
                icon: Icons.edit_calendar_outlined,
                label: 'Q.s Calculator',
              ),
              const SidebarXItem(
                icon: EvaIcons.barChart,
                label: 'Progress',
              ),
              const SidebarXItem(
                icon: EvaIcons.peopleOutline,
                label: 'About Us',
              ),
            ],
          ),
          HomeScreen(controller: _controller),
          Expanded(
            child: Center(
              child: HomeScreen(controller: _controller),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
                Center(
                  child: Row(
                    children: [
                      MidColumn(controller: controller),
                      // RightColumn(),
                    ],
                  ),
                );

            //     ListView.builder(
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
            // );

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

final divider = Divider(color: Colors.white.withOpacity(0.3), height: 1);
const canvasColor = Color(0xFF2E2E48);
