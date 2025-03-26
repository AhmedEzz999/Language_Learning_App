import 'package:flutter/material.dart';
import 'package:language_learning_app/components/color_container.dart';
import 'package:language_learning_app/models/color.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List <ColorItem> colorsList = const [
    ColorItem (
      jpName: 'Burakku',
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      soundSource: 'sounds/colors/black.wav',
    ),
    ColorItem (
      jpName: 'Chairo',
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
      soundSource: 'sounds/colors/brown.wav',
    ),
    ColorItem (
      jpName: 'Hokori ppoi kiiro',
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      soundSource: 'sounds/colors/dusty yellow.wav',
    ),
    ColorItem (
      jpName: 'Gurē',
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
      soundSource: 'sounds/colors/gray.wav',
    ),
    ColorItem (
      jpName: 'Midori',
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
      soundSource: 'sounds/colors/green.wav',
    ),
    ColorItem (
      jpName: 'Aka',
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
      soundSource: 'sounds/colors/red.wav',
    ),
    ColorItem (
      jpName: 'shiroi',
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
      soundSource: 'sounds/colors/white.wav',
    ),
    ColorItem (
      jpName: 'kiiroi',
      enName: 'yellow',
      image: 'assets/images/colors/color_yellow.png',
      soundSource: 'sounds/colors/yellow.wav',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Colors',
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
              itemCount: colorsList.length,
              itemBuilder: (context, index) {
                return ColorContainer(color: colorsList[index]);
              }
            ),
    );
  }
}