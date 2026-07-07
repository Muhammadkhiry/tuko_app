import 'package:flutter/material.dart';
import 'package:tuko_app/component/building_phrase.dart';
import 'package:tuko_app/models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<PhraseModel> phrases = [
    PhraseModel(
      engTxt: "What is your name?",
      japTxt: "Onamae wa nan desu ka?",
      soundPath: "assets/sounds/phrases/what_is_your_name.wav",
    ),
    PhraseModel(
      engTxt: "How are you feeling?",
      japTxt: "Ogenki desu ka?",
      soundPath: "assets/sounds/phrases/how_are_you_feeling.wav",
    ),
    PhraseModel(
      engTxt: "Where are you going?",
      japTxt: "Doko ni ikimasu ka?",
      soundPath: "assets/sounds/phrases/where_are_you_going.wav",
    ),
    PhraseModel(
      engTxt: "Are you coming?",
      japTxt: "Kimasu ka?",
      soundPath: "assets/sounds/phrases/are_you_coming.wav",
    ),
    PhraseModel(
      engTxt: "Yes, I'm coming",
      japTxt: "Hai, ikimasu",
      soundPath: "assets/sounds/phrases/yes_im_coming.wav",
    ),
    PhraseModel(
      engTxt: "I love programming",
      japTxt: "Puroguramingu ga daisuki desu",
      soundPath: "assets/sounds/phrases/i_love_programming.wav",
    ),
    PhraseModel(
      engTxt: "Programming is easy",
      japTxt: "Puroguramingu wa kantan desu",
      soundPath: "assets/sounds/phrases/programming_is_easy.wav",
    ),
    PhraseModel(
      engTxt: "I love anime",
      japTxt: "Anime ga daisuki desu",
      soundPath: "assets/sounds/phrases/i_love_anime.wav",
    ),
    PhraseModel(
      engTxt: "Don't forget to subscribe",
      japTxt: "Channeru tōroku o wasurenaide ne",
      soundPath: "assets/sounds/phrases/dont_forget_to_subscribe.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff452F25),
        title: Text("Phrases", style: TextStyle(fontSize: 32)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildingPhrase(
            model: phrases[index],
            color: Color(0xff449FC3),
          );
        },
      ),
    );
  }
}
