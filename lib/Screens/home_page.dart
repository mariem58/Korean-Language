import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuko_app/Screens/animal.dart';
import 'package:tuko_app/Screens/clothes.dart';
import 'package:tuko_app/Screens/colors.dart';
import 'package:tuko_app/Screens/family_page.dart';
import 'package:tuko_app/Screens/feelings.dart';
import 'package:tuko_app/Screens/phrase.dart';
import 'package:tuko_app/Screens/months.dart';
import 'package:tuko_app/Screens/number_page.dart';
import 'package:tuko_app/Screens/seasons.dart';
import 'package:tuko_app/Screens/week.dart';
import '../Component/category_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xff2d446b),
      appBar: AppBar(
        backgroundColor: const Color(0xff1a2b47),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                "assets/images/backgrounds/logo.png",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          "Learn Korean",
          style: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: _buildCategoryRows(context),
      ),
    );
  }

  List<Widget> _buildCategoryRows(BuildContext context) {
    final categories = [
      {
        "text": "Numbers",
        "imagePath": "assets/images/backgrounds/numbers_bg.jpeg",
        "screen": const NumberPage(),
      },
      {
        "text": "Colors",
        "imagePath": "assets/images/backgrounds/Color-wheel.webp",
        "screen": const ColorPage(),
      },
      {
        "text": "Family Member",
        "imagePath": "assets/images/backgrounds/family_bg.jpg",
        "screen": const FamilyPage(),
      },
      {
        "text": "Animals",
        "imagePath": "assets/images/backgrounds/animals_bg.jpeg",
        "screen": const Animals(),
      },
      {
        "text": "Week",
        "imagePath": "assets/images/backgrounds/week_bg.jpg",
        "screen": const Week(),
      },
      {
        "text": "Months",
        "imagePath": "assets/images/backgrounds/months_bg.jpeg",
        "screen": const Months(),
      },
      {
        "text": "Seasons",
        "imagePath": "assets/images/backgrounds/seasons_bg.jpg",
        "screen": const Seasons(),
      },
      {
        "text": "Clothes",
        "imagePath": "assets/images/backgrounds/clothes_bg.jpeg",
        "screen": const Clothes(),
      },
      {
        "text": "Feelings",
        "imagePath": "assets/images/backgrounds/feelings_bg.webp",
        "screen": const Feelings(),
      },
      {
        "text": "Greetings",
        "imagePath": "assets/images/backgrounds/greekings_bg.jpg",
        "screen": const Phases(),
      },
    ];

    List<Widget> rows = [];
    for (int i = 0; i < categories.length; i += 2) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCategoryButton(context, categories[i]),
            if (i + 1 < categories.length)
              _buildCategoryButton(context, categories[i + 1]),
          ],
        ),
      );
      rows.add(const SizedBox(height: 20));
    }

    return rows;
  }

  Widget _buildCategoryButton(BuildContext context, Map<String, dynamic> category) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => category["screen"],
          ),
        );
      },
      child: Category(
        text: category["text"],
        imagePath: category["imagePath"],
      ),
    );
  }
}
