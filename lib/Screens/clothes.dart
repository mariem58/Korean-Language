import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {

  final List<ItemModel> clothes = [
    ItemModel(image: "assets/images/Clothes/dress.png",
        enName: "Dress",
        koName: "드레스",
        speak: "deureseu",
        sound: 'sounds/clothes_sound/dress.mp3'),
    ItemModel(image: "assets/images/Clothes/g.png",
        enName: "Skirt",
        koName: "치마",
        speak: "chima",
        sound: 'sounds/clothes_sound/skirt.mp3'),
    ItemModel(image: "assets/images/Clothes/km.png",
        enName: "Shirt",
        koName: "셔츠",
        speak: "syeocheu",
        sound: 'sounds/clothes_sound/shirt.mp3'),
    ItemModel(image: "assets/images/Clothes/short.jpg",
        enName: "Shorts",
        koName: "반바지",
        speak: "banbaji",
        sound: 'sounds/clothes_sound/short.mp3'),
    ItemModel(image: "assets/images/Clothes/suit.jpg",
        enName: "Suit",
        koName: "정장",
        speak: "jeongjang",
        sound: 'sounds/clothes_sound/suit.mp3'),
    ItemModel(image: "assets/images/Clothes/jk.jpeg",
        enName: "Jacket",
        koName: "재킷",
        speak: "jaekit",
        sound: 'sounds/clothes_sound/jaket.mp3'),
    ItemModel(image: "assets/images/Clothes/p.png",
        enName: "Pants",
        koName: "바지",
        speak: "baji",
        sound: 'sounds/clothes_sound/pants.mp3'),
    ItemModel(image: "assets/images/Clothes/t_shirt.jpg",
        enName: "T-shirt",
        koName: "티셔츠",
        speak: "tisyeocheu",
        sound: 'sounds/clothes_sound/t_shirt.mp3'),
    ItemModel(image: "assets/images/Clothes/higab.jpg",
        enName: "Veil",
        koName: "드레스",
        speak: "deureseu",
        sound: 'sounds/clothes_sound/sound_dress.wav'),
    ItemModel(image: "assets/images/Clothes/boots.jpeg",
        enName: "Boots",
        koName: "부츠",
        speak: "buchu",
        sound: 'sounds/clothes_sound/veil.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Clothes"),  // Fix named parameter issue
      ),
      body: ItemGrid(items: clothes),
    );
  }
}
