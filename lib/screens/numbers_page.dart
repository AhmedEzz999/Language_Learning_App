import 'package:flutter/material.dart';
import 'package:language_learning_app/components/number_container.dart';
import 'package:language_learning_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List <Number> numbersList = const [
    Number (
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      soundSource: 'sounds/numbers/number_one_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      soundSource: 'sounds/numbers/number_two_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      soundSource: 'sounds/numbers/number_three_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
      soundSource: 'sounds/numbers/number_four_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      soundSource: 'sounds/numbers/number_five_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      soundSource: 'sounds/numbers/number_six_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'nana',
      enName: 'seven',
      soundSource: 'sounds/numbers/number_seven_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      soundSource: 'sounds/numbers/number_eight_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyū',
      enName: 'nine',
      soundSource: 'sounds/numbers/number_nine_sound.mp3'
    ),
    Number (
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'jū',
      enName: 'ten',
      soundSource: 'sounds/numbers/number_ten_sound.mp3'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Numbers',
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
              itemCount: numbersList.length,
              itemBuilder: (context, index) {
                return NumberContainer(number: numbersList[index]);
              }
            ),
    );
  }
}