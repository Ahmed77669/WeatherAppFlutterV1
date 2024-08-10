import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget createTextField(String text, bool hide,) {
  return
    SizedBox(
      width: 400,
      child:
      TextField(
        obscureText: hide,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: GoogleFonts.roboto(
              color: Color.fromARGB(255, 74, 74, 74),
              fontSize: 16
          ),
          filled: true,
          fillColor: Color.fromARGB(255, 229, 229, 234),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide.none,

          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        ),

        style: const TextStyle(
            color: Color.fromARGB(255, 74, 74, 74), fontSize: 16),
      ),

    );
}