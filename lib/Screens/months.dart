import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/app_bar.dart';
import '../Component/list_grid_component.dart';
import '../Model/itemModel.dart';

class Months extends StatefulWidget {
  const Months({super.key});

  @override
  State<Months> createState() => _MonthsState();
}
/////////////////////////////////////////////////
class _MonthsState extends State<Months> {
  final List<ItemModel> months = [
    ItemModel(image: "assets/images/Months/january.jpg",
        enName: "January",
        koName: "일월",
        speak: "irwol",
        sound: 'sounds/months_sound/january.mp3'),
    ItemModel(image: "assets/images/Months/feb.jpg",
        enName: "February",
        koName: "이월",
        speak: "iwol",
        sound: 'sounds/months_sound/feb.mp3'),
    ItemModel(image: "assets/images/Months/march.jpg",
        enName: "March",
        koName: "삼월",
        speak: "samwol",
        sound: 'sounds/months_sound/march.mp3'),
    ItemModel(image: "assets/images/Months/april.jpg",
        enName: "April",
        koName: "사월",
        speak: "sawol",
        sound: 'sounds/months_sound/april.mp3'),
    ItemModel(image: "assets/images/Months/may.jpg",
        enName: "May",
        koName: "오월",
        speak: "owol",
        sound: 'sounds/months_sound/may.mp3'),
    ItemModel(image: "assets/images/Months/june.jpg",
        enName: "June",
        koName: "유월",
        speak: "yuwol",
        sound: 'sounds/months_sound/june.mp3'),
    ItemModel(image: "assets/images/Months/july.jpg",
        enName: "July",
        koName: "칠월",
        speak: "chilwol",
        sound: 'sounds/months_sound/july.mp3'),
    ItemModel(image: "assets/images/Months/aug.jpg",
        enName: "August",
        koName: "팔월",
        speak: "palwol",
        sound: 'sounds/months_sound/aug.mp3'),
    ItemModel(image: "assets/images/Months/sept.jpg",
        enName: "September",
        koName: "구월",
        speak: "guwol",
        sound: 'sounds/months_sound/sept.mp3'),
    ItemModel(image: "assets/images/Months/oct.jpg",
        enName: "October",
        koName: "시월",
        speak: "siwol",
        sound: 'sounds/months_sound/oct.mp3'),
    ItemModel(image: "assets/images/Months/novamber.jpg",
        enName: "November",
        koName: "십일월",
        speak: "sibirwol",
        sound: 'sounds/months_sound/oct.mp3'),
    ItemModel(image: "assets/images/Months/dec.jpg",
        enName: "December",
        koName: "십이월",
        speak: "sibiwol",
        sound: 'sounds/months_sound/dec.mp3'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Months", ),  // Fix named parameter issue
      ),
      body: ItemGrid(items: months),
    );
  }
}
