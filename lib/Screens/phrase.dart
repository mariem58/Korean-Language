import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Component/app_bar.dart';
import '../Component/phraseItem.dart';
import '../Model/phraseModel.dart'; // Assuming you use audioplayers package

class Phases extends StatelessWidget {
  const Phases({super.key});

  final List<PhraseModel> item = const [
    PhraseModel(
        sound: 'sounds/phrase_sound/are_you_coming.wav',
        koName: '오고 있나요?',
        enName: 'Are you coming?',
        speak: 'O-go it-na-yo ?'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/how_are_you_feeling.wav',
        koName: '기분이 어때요?',
        enName: 'How are you feeling?',
        speak: 'Gi-bun-i eo-ttaeyo?'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/i_love_anime.wav',
        koName: '나는 애니메를 사랑해요',
        enName: 'I love anime',
        speak: 'Na-neun a-ni-me-reul sa-lang-hae-yo'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/what_is_your_name.wav',
        koName: '이름이 뭐예요?',
        enName: 'What is your name?',
        speak: 'I-reum-i mwo-ye-yo?'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/where_are_you_going.wav',
        koName: '어디 가고 있나요?',
        enName: 'Where are you going?',
        speak: 'Eo-di ga-go it-na-yo?'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/programming_is_easy.wav',
        koName: '프로그래밍은 쉬워요',
        enName: 'Programming is easy',
        speak: 'Peu-ro-geu-rae-ming-eun swi-wo-yo'
    ),
    PhraseModel(
        sound: 'sounds/colors_sound/gray.wav',
        koName: '나는 프로그래밍을 사랑해요',
        enName: 'I love programming',
        speak: 'Na-neun peu-ro-geu-rae-ming-eul sa-lang-hae-yo'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/dont_forget_to_subscribe.wav',
        koName: '구독하는 것을 잊지 마세요',
        enName: "Don't forget to subscribe",
        speak: 'Gu-dok-ha-neun geos-eul it-ji ma-se-yo'
    ),
    PhraseModel(
        sound: 'sounds/phrase_sound/yes_im_coming.wav',
        koName: '네, 가고 있어요',
        enName: "Yes, I'm coming",
        speak: 'Ne, ga-go it-sseo-yo'
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(  // Wrap with PreferredSize to ensure it works properly
        preferredSize: const Size.fromHeight(56.0),  // Standard height for AppBar
        child: AppBarComponent(txt: "Greetings",),  // Fix named parameter issue
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: item.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: item[index],
          );
        },
      ),
    );
  }
}