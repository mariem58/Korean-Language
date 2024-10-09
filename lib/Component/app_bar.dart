import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key, required this.txt,});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
      ),
      backgroundColor: const Color(0xff1a2b47),// Accessing the color directly
      title: Text(
        txt, // Accessing the text directly
        style: GoogleFonts.josefinSans( // Using GoogleFonts directly
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
        ),
      ),
    );
  }
}
