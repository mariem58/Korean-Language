import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Feelings extends StatefulWidget {
  const Feelings({super.key});

  @override
  State<Feelings> createState() => _FeelingsState();
}

class _FeelingsState extends State<Feelings> {
  final List<ItemModel> feelings = [
    ItemModel(image: "assets/images/Feelings/happy.jpeg",
        enName: "Happy",
        koName: "행복",
        speak: "haengbok",
        sound: 'sounds/feeling_sound/happy.mp3'),
    ItemModel(image: "assets/images/Feelings/sad.jpeg",
        enName: "Sad",
        koName: "슬픔",
        speak: "seulpeum",
        sound: 'sounds/feeling_sound/sad.mp3'),
    ItemModel(image: "assets/images/Feelings/cry.jpg",
        enName: "Cry",
        koName: "울음",
        speak: "ureum",
        sound: 'sounds/feeling_sound/cry.mp3'),
    ItemModel(image: "assets/images/Feelings/angry.jpeg",
        enName: "Angry",
        koName: "화남",
        speak: "hwanam",
        sound: 'sounds/feeling_sound/angry.mp3'),
    ItemModel(image: "assets/images/Feelings/confused.jpeg",
        enName: "Confused",
        koName: "혼란",
        speak: "hollan",
        sound: 'sounds/feeling_sound/confused.mp3'),
    ItemModel(image: "assets/images/Feelings/oh.jpeg",
        enName: "Surprised",
        koName: "놀람",
        speak: "nollam",
        sound: 'sounds/feeling_sound/superised.mp3'),
    ItemModel(image: "assets/images/Feelings/sleep.jpg",
        enName: "Sleep",
        koName: "잠",
        speak: "jam",
        sound: 'sounds/feeling_sound/sleep.mp3'),
    ItemModel(image: "assets/images/Feelings/tired.png",
        enName: "Tired",
        koName: "피곤",
        speak: "pigon",
        sound: 'sounds/feeling_sound/tired.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Feelings",),  // Fix named parameter issue
      ),
      body: ItemGrid(items: feelings),
    );
  }
}
