import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  
  static TextStyle titulo = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle content = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static TextStyle dataTitulo = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w600,
  );

  static List<Color> corCard = [
    Colors.pink.shade200.withOpacity(0.2),
    Colors.purple.shade200.withOpacity(0.2),
    Colors.blue.shade200.withOpacity(0.2),
    Colors.green.shade200.withOpacity(0.2),
    Colors.yellow.shade200.withOpacity(0.2),
    Colors.orange.shade200.withOpacity(0.2),
    Colors.red.shade200.withOpacity(0.2),
    Colors.brown.shade200.withOpacity(0.2),
    Colors.teal.shade200.withOpacity(0.2),
    Colors.indigo.shade200.withOpacity(0.2),
  ];
  

}