import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Seasons extends StatefulWidget {
  const Seasons({super.key});

  @override
  State<Seasons> createState() => _SeasonsState();
}

class _SeasonsState extends State<Seasons> {
  final List<ItemModel> seasons = [
    ItemModel(image: "assets/images/Seasons/summer.jpg",
        enName: "Summer",
        koName: "여름",
        speak: "yeoreum",
        sound: 'sounds/seasons_sound/summer.mp3'),
    ItemModel(image: "assets/images/Seasons/winter.jpeg",
        enName: "Winter",
        koName: "겨울",
        speak: "gyeoul",
        sound: 'sounds/seasons_sound/winter.mp3'),
    ItemModel(image: "assets/images/Seasons/karef.jpg",
        enName: "Autumn",
        koName: "가을",
        speak: "gaeul",
        sound: 'sounds/seasons_sound/tum.mp3'),
    ItemModel(image: "assets/images/Seasons/tree.png",
        enName: "Spring",
        koName: "봄",
        speak: "bom",
        sound: 'sounds/seasons_sound/sprint.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Seasons", ),  // Fix named parameter issue
      ),
      body: ItemGrid(items: seasons),
    );
  }
}
