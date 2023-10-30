import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(),
      theme: ThemeData(
        primaryColor: Color.lerp(
          const Color(0xFF352163),
          Color.lerp(
            const Color(0xFF331972),
            const Color(0xFF33143C),
            0.5,
          ),
          0.5,
        ),
        textTheme: TextTheme(
          titleMedium: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
