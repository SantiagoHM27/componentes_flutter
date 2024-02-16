import 'package:flutter/material.dart';
import 'package:praactica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
          scaffoldBackgroundColor:  Color.fromARGB(197, 255, 255, 255),
          appBarTheme:  const AppBarTheme (color: Color.fromARGB(21, 15, 39, 255)),
          textTheme:  const TextTheme(
            headlineLarge: TextStyle(
              fontFamily: 'sans-serif',
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(197, 123, 9, 9),

            ),
            bodySmall: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(245, 65, 90, 166),

            ),

          ),
      ),
  
    );
  }
}