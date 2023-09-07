import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_schemes.g.dart'; //isso aq é para fazer os dois arquivos se comunicarem, como se fosse um parte do outro

ThemeData get lightTheme => ThemeData(  //pro hotload funcionar, tem que colocar o get //dps muda pra final novamente
  useMaterial3: true, colorScheme: _lightColorScheme,  //pode fazer qualquer customização aqui que o resto vai herdar
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: _lightColorScheme.primaryContainer,
          foregroundColor: _lightColorScheme.primary,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: _lightColorScheme.primary,
          foregroundColor: _lightColorScheme.onPrimary,
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   focusColor: _lightColorScheme.primary,
        //   fillColor: _lightColorScheme.secondaryContainer,
        //   errorBorder: OutlineInputBorder(borderSide: BorderSide(color: _lightColorScheme.error)),
        //   focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: _lightColorScheme.error)),
        //   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: _lightColorScheme.primary)),
        //   enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: _lightColorScheme.primary)),
        // ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            
            backgroundColor: MaterialStateProperty.all(_lightColorScheme.primary),
            foregroundColor: MaterialStateProperty.all(_lightColorScheme.onPrimary),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
            padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(16, 8, 16, 8)),
          ),
        ),
        fontFamily: GoogleFonts.roboto().fontFamily,
        //scaffoldBackgroundColor: _lightColorScheme.onPrimary,
        
      
);  

ThemeData get darkTheme => ThemeData(
  useMaterial3: true, colorScheme: _darkColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: _darkColorScheme.primaryContainer,
          foregroundColor: _darkColorScheme.primary,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: _darkColorScheme.primary,
          foregroundColor: _darkColorScheme.onPrimary,
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   fillColor: _darkColorScheme.secondaryContainer,
        //   errorBorder: OutlineInputBorder(borderSide: BorderSide(color: _darkColorScheme.error)),
        //   focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: _darkColorScheme.error)),
        //   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: _darkColorScheme.primary)),
        //   enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: _darkColorScheme.primary)),
        // ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_darkColorScheme.primary),
            foregroundColor: MaterialStateProperty.all(_darkColorScheme.onPrimary),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
            padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(16, 8, 16, 8)),
          ),
        ),
        fontFamily: GoogleFonts.roboto().fontFamily,
);