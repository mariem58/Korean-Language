import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Animals extends StatefulWidget {
  const Animals({super.key});

  @override
  State<Animals> createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  final List<ItemModel> animals = [
    ItemModel(image: "assets/images/Animals/cat.png",
        enName: "Cat",
        koName: "고양이",
        speak: "goyangi",
        sound: 'sounds/animal_sound/cat.mp3'),
    ItemModel(image: "assets/images/Animals/dog.png",
        enName: "Dog",
        koName: "개",
        speak: "gae",
        sound: 'sounds/animal_sound/dog.mp3'),
    ItemModel(image: "assets/images/Animals/lion.jpg",
        enName: "Lion",
        koName: "사자",
        speak: "saja",
        sound: 'sounds/animal_sound/lion.mp3'),
    ItemModel(image: "assets/images/Animals/hours.jpeg",
        enName: "Horse",
        koName: "말",
        speak: "mal",
        sound: 'sounds/animal_sound/hourse.mp3'),
    ItemModel(image: "assets/images/Animals/rabbit.jpg",
        enName: "Rabbit",
        koName: "토끼",
        speak: "tokki",
        sound: 'sounds/animal_sound/rabbit.mp3'),
    ItemModel(image: "assets/images/Animals/duck.jpeg",
        enName: "Duck",
        koName: "오리",
        speak: "ori",
        sound: 'sounds/animal_sound/duck.mp3'),
    ItemModel(image: "assets/images/Animals/sheep.png",
        enName: "Sheep",
        koName: "양",
        speak: "yang",
        sound: 'sounds/animal_sound/sheep.mp3'),
    ItemModel(image: "assets/images/Animals/elephants.jpg",
        enName: "Elephant",
        koName: "코끼리",
        speak: "kokkiri",
        sound: 'sounds/animal_sound/elephent.mp3'),

    ItemModel(image: "assets/images/Animals/turtle.png",
        enName: "Turtle",
        koName: "거북이",
        speak: "geobugi",
        sound: 'sounds/animal_sound/turtle.mp3'),
    ItemModel(image: "assets/images/Animals/giraffe.jpeg",
        enName: "Giraffe",
        koName: "기린",
        speak: "girin",
        sound: 'sounds/animal_sound/giraff.mp3'),
    ItemModel(image: "assets/images/Animals/ant.jpeg",
        enName: "Ant",
        koName: "개미",
        speak: "gaemi",
        sound: 'sounds/animal_sound/ant.mp3'),
    ItemModel(image: "assets/images/Animals/fish.jpeg",
        enName: "Fish",
        koName: "물고기",
        speak: "mulgogi",
        sound: 'sounds/animal_sound/fish.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Animals"),  // Fix named parameter issue
      ),
      body: ItemGrid(items: animals),
    );
  }
}
