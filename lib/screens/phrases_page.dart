import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrases_container.dart';
import 'package:language_learning_app/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List <Phrase> phraseList = const [
    Phrase (
      jpName: 'Anata no namae wa nan desu ka?',
      enName: 'What is your name?',
      soundSource: 'sounds/phrases/what_is_your_name.wav'
    ),
    Phrase (
      jpName: 'Doko ni ikimasu ka?',
      enName: 'Where are you going?',
      soundSource: 'sounds/phrases/where_are_you_going.wav'
    ),
    Phrase (
      jpName: 'Anata wa kimasu ka?',
      enName: 'Are you coming?',
      soundSource: 'sounds/phrases/are_you_coming.wav'
    ),
    Phrase (
      jpName: 'Hai, ikimasu',
      enName: "Yes I'm coming",
      soundSource: 'sounds/phrases/yes_I_am_coming.wav'
    ),
    Phrase (
      jpName: 'Kibun wa dō desu ka?',
      enName: 'How are you feeling?',
      soundSource: 'sounds/phrases/how_are_you_feeling.wav'
    ),
    Phrase (
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'Programming is easy.',
      soundSource: 'sounds/phrases/programming_is_easy.wav'
    ),
    Phrase (
      jpName: 'Puroguramingu ga daisuki desu.',
      enName: 'I love programming.',
      soundSource: 'sounds/phrases/i_love_programming.wav'
    ),
    Phrase (
      jpName: 'Anime ga daisuki desu.',
      enName: 'I love anime.',
      soundSource: 'sounds/phrases/i_love_anime.wav'
    ),
    Phrase (
      jpName: 'Channeru tōroku o wasurenaide kudasai.',
      enName: "Don't forget to subscribe.",
      soundSource: 'sounds/phrases/dont_forget_to_subscribe.wav'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 25
        ),
      ),
      body: ListView.builder(
              itemCount: phraseList.length,
              itemBuilder: (context, index) {
                return PhraseContainer(phrase: phraseList[index]);
              }
            ),
            backgroundColor: Colors.blueGrey[700]
    );
  }
}