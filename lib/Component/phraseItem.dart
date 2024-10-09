import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/phraseModel.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});

  final PhraseModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff2d446b),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      item.koName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      item.speak,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sound));
                },
                icon: Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
