import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/home_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  const LanguageLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'Numbers': (context) => NumbersPage(),
        'Family Members': (context) => FamilyMembersPage(),
        'Colors': (context) => ColorsPage(),
        'Phrases': (context) => PhrasesPage(),
      },
    );
  }
}