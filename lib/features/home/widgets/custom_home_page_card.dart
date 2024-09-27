import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomePageCard extends StatelessWidget {
  final String title;
  const CustomHomePageCard({super.key , required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade400,
        boxShadow: [
          BoxShadow(
              color: Colors.blue.shade600,
              offset:const Offset(-4, 4),
              blurRadius: 2,
              spreadRadius: 1,
          ),
          BoxShadow(
              color: Colors.blue.shade300,
              offset:const Offset(4, -4),
              blurRadius: 2,
              spreadRadius: 1,
          ),
        ],
      ),
      child: Center(
        child: Text(title , style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
