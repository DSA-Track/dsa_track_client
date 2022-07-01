import 'package:dsa_tracker/theme/app_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({this.onSearch, Key? key}) : super(key: key);

  final controller = TextEditingController();
  final Function(String value)? onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(6),
      color: AppTheme.darkwhiteColor,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(EvaIcons.search),
          hintText: "Search..",
          isDense: true,
          fillColor: Colors.white12,

          // enabledBorder: ,
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
