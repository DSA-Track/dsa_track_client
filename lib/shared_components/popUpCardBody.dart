import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popup_card/popup_card.dart';

class PopUpItemBody extends StatelessWidget {
  const PopUpItemBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Login Plsss !!!",
              style: GoogleFonts.nunitoSans(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.2,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              // hintStyle: GoogleFonts.nunitoSans(),

              border: InputBorder.none,
            ),
            cursorColor: Colors.black,
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.2,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
            ),
            cursorColor: Colors.black,
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.2,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
