import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget signupButton(String text) {
  return
    SizedBox(
      width: 342,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},

        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 2, 120, 205),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: Colors.white,
          ),
        ),

      ),
    );
}