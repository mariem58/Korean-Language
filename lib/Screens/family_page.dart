import 'package:flutter/material.dart';
import 'package:tuko_app/Component/list_grid_component.dart';
import '../Component/app_bar.dart';
import '../Model/itemModel.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  _FamilyPageState createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  final List<ItemModel> family = [
    ItemModel(
        image: "assets/images/family_member/family_grandfather.png",
        enName: "Grandfather",
        koName: "할아버지",
        speak: "harabeoji",
        sound: 'sounds/family_members_sound/grand_father.wav'),

    ItemModel(
        image: "assets/images/family_member/family_grandmother.png",
        enName: "Grandmother",
        koName: "할머니",
        speak: "halmeoni",
        sound: 'sounds/family_members_sound/grand_mother.wav'),
    ItemModel(
        image: "assets/images/family_member/family_mother.png",
        enName: "Mother",
        koName: "어머니",
        speak: "eomeoni",
        sound: 'sounds/family_members_sound/mother.wav'),
    ItemModel(
        image: "assets/images/family_member/family_father.png",
        enName: "Father",
        koName: "아버지",
        speak: "abeoji",
        sound: 'sounds/family_members_sound/father.wav'),
    ItemModel(
        image: "assets/images/family_member/family_older_brother.png",
        enName: "Older Brother",
        koName: "형",
        speak: "hyeong",
        sound: 'sounds/family_members_sound/older_brother.wav'),
    ItemModel(
        image: "assets/images/family_member/family_older_sister.png",
        enName: "Older Sister",
        koName: "언니 ",
        speak: "eonni",
        sound: 'sounds/family_members_sound/older_sister.wav'),
    ItemModel(
        image: "assets/images/family_member/family_younger_sister.png",
        enName: "Younger Sister",
        koName: "여동생",
        speak: "yeodongsaeng",
        sound: 'sounds/family_members_sound/younger_sister.wav'),
    ItemModel(
        image: "assets/images/family_member/family_younger_brother.png",
        enName: "Younger Brother",
        koName: "남동생",
        speak: "namdongsaeng",
        sound: 'sounds/family_members_sound/younger_brother.wav'),
    ItemModel(
        image: "assets/images/family_member/family_son.png",
        enName: "Son",
        koName: "아들",
        speak: "adeul",
        sound: 'sounds/family_members_sound/son.wav'),
    ItemModel(
        image: "assets/images/family_member/family_daughter.png",
        enName: "Daughter",
        koName: "딸",
        speak: "ttal",
        sound: 'sounds/family_members_sound/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBarComponent(txt: "Family Members"),
      ),
      body: ItemGrid(items: family),
    );
  }
}
