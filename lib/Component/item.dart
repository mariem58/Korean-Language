import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/Model/itemModel.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,

    required this.item,
  });

  final ItemModel item;


  @override
  Widget build(BuildContext context) {
    return
       Card(
        color: const Color(0xff2d446b),
        child: Container(
          width: 170,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item.image,
                      width: 150,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.enName,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      item.koName,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                subtitle: Text(
                  item.speak,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),

                trailing: IconButton(
                  onPressed: () async {  // Mark as async
                    final player = AudioPlayer();
                    await player.play(AssetSource(item.sound)); // Use speak to reference the sound
                  },
                  icon: const Icon(Icons.volume_up_outlined, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
