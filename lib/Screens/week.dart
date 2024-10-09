import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Week extends StatefulWidget {
  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  final List<ItemModel> week = [
    ItemModel(image: "assets/images/Week/sat.jpg",
        enName: "Saturday",
        koName: "토요일",
        speak: "toyoil",
        sound: 'sounds/week_sound/sat.mp3'),
    ItemModel(image: "assets/images/Week/sun.jpeg",
        enName: "Sunday",
        koName: "일요일",
        speak: "iryoil",
        sound: 'sounds/week_sound/sunday.mp3'),
    ItemModel(image: "assets/images/Week/mon.jpeg",
        enName: "Monday",
        koName: "월요일",
        speak: "wolyoil",
        sound: 'sounds/week_sound/monday.mp3'),
    ItemModel(image: "assets/images/Week/tus.jpg",
        enName: "Tuesday",
        koName: "화요일",
        speak: "hwahyoil",
        sound: 'sounds/week_sound/tus.mp3'),
    ItemModel(image: "assets/images/Week/wen.jpeg",
        enName: "Wednesday",
        koName: "수요일",
        speak: "suyoil",
        sound: 'sounds/week_sound/wen.mp3'),
    ItemModel(image: "assets/images/Week/the.jpeg",
        enName: "Thursday",
        koName: "목요일",
        speak: "mokyoil",
        sound: 'sounds/week_sound/thur.mp3'),
    ItemModel(image: "assets/images/Week/fri.jpg",
        enName: "Friday",
        koName: "금요일",
        speak: "geumyoil",
        sound: 'sounds/week_sound/friday.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Week",),
        // Fix named parameter issue
      ),
      body: ItemGrid(items: week),
    );
  }
}
