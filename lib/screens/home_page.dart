import 'package:flutter/material.dart';
import 'package:language_learning_app/components/home_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32
          ),
        ),
      ),
      body: Column(
        children: [
          HomeCategory (
            text: 'Numbers',
            color: Color(0xFFEF9235),
            onTap: (){
              Navigator.pushNamed(context, 'Numbers');
            },
          ),
          HomeCategory (
            text: 'Family Members',
            color: Color(0xFF558B37),
            onTap: (){
              Navigator.pushNamed(context, 'Family Members');
            },
          ),
          HomeCategory (
            text: 'Colors',
            color: Color(0xFF79359F),
            onTap: (){
              Navigator.pushNamed(context, 'Colors');
            }
          ),
          HomeCategory (
            text: 'Phrases',
            color: Color(0xFF50ADC7),
            onTap: (){
              Navigator.pushNamed(context, 'Phrases');
            },
          )
        ],
      ),
    );
  }
}