import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/item.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});
  @override
  _NumberPageState createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  final List<ItemModel> numbers = [
    ItemModel(image: "assets/images/numbers/number_one.png",
        enName: "One",
        koName: "일",
        speak: "il",
        sound: 'sounds/numbers_sound/sound_one.wav'),
    ItemModel(image: "assets/images/numbers/number_two.jpeg",
        enName: "Two",
        koName: "이",
        speak: "i",
        sound: 'sounds/numbers_sound/sound_two.wav'),
    ItemModel(image: "assets/images/numbers/number_three.jpeg",
        enName: "Three",
        koName: "삼",
        speak: "sam",
        sound: 'sounds/numbers_sound/sound_three.wav'),
    ItemModel(image: "assets/images/numbers/number_four.webp",
        enName: "Four",
        koName: "사",
        speak: "sa",
        sound: 'sounds/numbers_sound/sound_four.wav'),
    ItemModel(image: "assets/images/numbers/number_five.webp",
        enName: "Five",
        koName: "오",
        speak: "o",
        sound: 'sounds/numbers_sound/sound_five.wav'),
    ItemModel(image: "assets/images/numbers/number_six.webp",
        enName: "Six",
        koName: "육",
        speak: "yuk",
        sound: 'sounds/numbers_sound/sound_six.wav'),
    ItemModel(image: "assets/images/numbers/number_seven.png",
        enName: "Seven",
        koName: "칠",
        speak: "chil",
        sound: 'sounds/numbers_sound/sound_seven.wav'),
    ItemModel(image: "assets/images/numbers/number_eight.jpg",
        enName: "Eight",
        koName: "팔",
        speak: "pal",
        sound: 'sounds/numbers_sound/sound_eight.wav'),
    ItemModel(image: "assets/images/numbers/number_nine.png",
        enName: "Nine",
        koName: "구",
        speak: "gu",
        sound: 'sounds/numbers_sound/sound_nine.wav'),
    ItemModel(image: "assets/images/numbers/number_ten.jpeg",
        enName: "Ten",
        koName: "십",
        speak: "sip",
        sound: 'sounds/numbers_sound/sound_ten.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),
        // Standard height for AppBar
        child: AppBarComponent(txt: "Numbers"), // Fix named parameter issue
      ),
      body: ItemGrid(items: numbers),
    );
  }

}

