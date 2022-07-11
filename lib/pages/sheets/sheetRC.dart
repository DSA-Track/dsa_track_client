import 'package:dsa_tracker/pages/dashboard/dashboard.dart';
import 'package:dsa_tracker/pages/home/homeMC.dart';
import 'package:dsa_tracker/shared_components/sheetCard.dart';
import 'package:dsa_tracker/shared_components/sheetCard2.dart';
import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SheetRightColumn extends StatelessWidget {
  const SheetRightColumn({
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
          SheetListDropdown(),
          SizedBox(height: 10),
          Text(
            'Streak - ',
            style: GoogleFonts.nunitoSans(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          // SheetCard_List(),
        ],
      ),
    );
  }
}

class SheetListDropdown extends StatefulWidget {
  const SheetListDropdown({Key? key}) : super(key: key);

  @override
  State<SheetListDropdown> createState() => _SheetListDropdownState();
}

class _SheetListDropdownState extends State<SheetListDropdown> {
  String dropdownValue = 'Love Babbar Sheet';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.28),
        borderRadius: BorderRadius.circular(12),
        // backgroundBlendMode: ,
      ),
      child: DropdownButton<String>(
        alignment: Alignment.centerRight,
        value: dropdownValue,
        // icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        underline: Container(
          height: 2,
          // color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[
          'Love Babbar Sheet',
          'Striver Sheet',
          'Arsh Goyal Sheet',
          'Apni Kaksha Sheet',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.centerRight,
            value: value,
            child: Text(value),
          );
        }).toList(),
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

class SheetCard_List extends StatelessWidget {
  const SheetCard_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SheetCard2(
          color: AppTheme.color3,
          name: 'Striver Sheet',
          percentage: 48,
          question: 186,
        ),
      ],
    );
  }
}
