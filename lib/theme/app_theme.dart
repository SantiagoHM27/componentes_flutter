

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Constante color primario
  static const primaryColor = Color.fromARGB(255, 136, 122, 229);
  // Color secundario
  static const secondaryColor = Color.fromARGB(245, 65, 90, 166);
  // Constante del color del fondo
  static const backColor = Color.fromARGB(197, 255, 254, 254);
  //botones
  static const buttcolor = Color.fromARGB(100,190, 100, 200);

  //constante de color botones y widgets deshabilitados
  static const disabledWidgetColor = Color.fromARGB(200, 200, 222, 200);

  // Definicion del tema de color y estilo de la app
  static final ThemeData lightTheme = ThemeData.light().copyWith( 
    scaffoldBackgroundColor: backColor,
    appBarTheme:AppBarTheme(
      color:primaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      )
      
      ),

      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 35.0,
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttcolor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(
            fontSize: 22.5
          ),
        ),
      ),
        
      
    ),
    textTheme:  TextTheme(
      // Titulos del primer nivel
            headlineLarge: GoogleFonts.acme(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: secondaryColor,
              decoration: TextDecoration.underline,
              decorationColor: primaryColor,
              decorationStyle: TextDecorationStyle.double,
              decorationThickness: 2.5
            ),

            headlineMedium: GoogleFonts.alexandria(
              fontSize: 25.5,
              fontWeight: FontWeight.w700,
              color: secondaryColor,
            ),


            bodySmall: GoogleFonts.montserrat(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color:  secondaryColor,
              fontStyle: FontStyle.italic

            ),

          ),
  );

    

}