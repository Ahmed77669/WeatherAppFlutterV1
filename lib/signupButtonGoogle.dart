
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget signupButtonGoogle(String text) {
  return
    SizedBox(
      width: 342,
      height: 55,
      child: ElevatedButton(
          onPressed: () {},

          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
              side: BorderSide(
                color: Color.fromARGB(255, 2, 120, 205),
                width: 1,
              ),
            ),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/google_icon.png')),

                Text(
                  text,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Color.fromARGB(255, 2, 120, 205),
                  ),
                ),
              ])
      ),
    );
}