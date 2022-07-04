import 'package:dsa_tracker/shared_components/sheetCard.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeMiddleColumn extends StatelessWidget {
  const HomeMiddleColumn({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, right: 10, left: 10),
      child: ListView(
        children: [
          SearchBar(),
          SizedBox(height: 10),
          Text(
            'Choose your Sheet - ',
            style: GoogleFonts.nunitoSans(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          SheetList(),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  SearchBar({this.onSearch, Key? key}) : super(key: key);

  final controller = TextEditingController();
  final Function(String value)? onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      // color: AppTheme.darkwhiteColor,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(EvaIcons.search),
          hintText: "Search..",
          isDense: true,
          fillColor: Colors.white.withOpacity(0.9),
        ),
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
          if (onSearch != null) onSearch!(controller.text);
        },
        textInputAction: TextInputAction.search,
        style: TextStyle(color: AppTheme.blackColor),
      ),
    );
  }
}

class SheetList extends StatelessWidget {
  const SheetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SheetCard(
          name: 'Love Babbar Sheet',
          color: AppTheme.light.cardColor,
          question: '450',
        ),
      ],
    );
  }
}
