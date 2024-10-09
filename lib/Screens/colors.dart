import 'package:flutter/material.dart';
import 'package:tuko_app/Component/app_bar.dart';
import 'package:tuko_app/Component/list_grid_component.dart'; // Import the new component
import '../Model/itemModel.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  final List<ItemModel> colors = [
    ItemModel(image: "assets/images/colors/black.jpg", enName: "Black", koName: "검정", speak: "geomjeong", sound: 'sounds/colors_sound/black.wav'),
    ItemModel(image: "assets/images/colors/brown.png", enName: "Brown", koName: "갈색", speak: "galsaek", sound: 'sounds/colors_sound/brown.wav'),
    ItemModel(image: "assets/images/colors/gray.png", enName: "Gray", koName: "회색", speak: "hoesaek", sound: 'sounds/colors_sound/gray.wav'),
    ItemModel(image: "assets/images/colors/white.png", enName: "White", koName: "흰색", speak: "huinsek", sound: 'sounds/colors_sound/white.m4a'),
    ItemModel(image: "assets/images/colors/green.png", enName: "Green", koName: "녹색", speak: "noksaek", sound: 'sounds/colors_sound/green.wav'),
    ItemModel(image: "assets/images/colors/red.png", enName: "Red", koName: "빨간색", speak: "ppalgansek", sound: 'sounds/colors_sound/red.wav'),
    ItemModel(image: "assets/images/colors/orange.png", enName: "Orange", koName: "주황색", speak: "juhwangsek", sound: 'sounds/colors_sound/orange.wav'),
    ItemModel(image: "assets/images/colors/pink.jpeg", enName: "Pink", koName: "분홍색", speak: "bunhongsek", sound: 'sounds/colors_sound/pink.wav'),
    ItemModel(image: "assets/images/colors/yellow.png", enName: "Yellow", koName: "노란색", speak: "noransaek", sound: 'sounds/colors_sound/yellow.wav'),
    ItemModel(image: "assets/images/colors/blue.png", enName: "Blue", koName: "파란색", speak: "paransek", sound: 'sounds/colors_sound/blue.wav'),
    ItemModel(image: "assets/images/colors/baby_blue.png", enName: "Baby_Blue", koName: "베이비 블루", speak: "beibi beulu", sound: 'sounds/colors_sound/baby_blue.wav'),
    ItemModel(image: "assets/images/colors/purble.jpeg", enName: "Purple", koName: "보라색", speak: "borasaek", sound: 'sounds/colors_sound/purple.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBarComponent(txt: "Colors"),
      ),
      body: ItemGrid(items: colors), // Use the new reusable component
    );
  }
}
