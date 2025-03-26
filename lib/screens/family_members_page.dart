import 'package:flutter/material.dart';
import 'package:language_learning_app/components/family_members_container.dart';
import 'package:language_learning_app/models/family_members.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List <FamilyMember> membersList = const [
    FamilyMember (
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'son',
      soundSource: 'sounds/family_members/son.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daughter',
      soundSource: 'sounds/family_members/daughter.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'father',
      soundSource: 'sounds/family_members/father.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'mother',
      soundSource: 'sounds/family_members/mother.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojīsan',
      enName: 'grand father',
      soundSource: 'sounds/family_members/grand father.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'grand mother',
      soundSource: 'sounds/family_members/grand mother.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otōto',
      enName: 'younger brother',
      soundSource: 'sounds/family_members/younger brother.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imōto',
      enName: 'younger sister',
      soundSource: 'sounds/family_members/younger sister.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'onīsan',
      enName: 'older bother',
      soundSource: 'sounds/family_members/older bother.wav'
    ),
    FamilyMember (
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'older sister',
      soundSource: 'sounds/family_members/older sister.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Family Members',
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
              itemCount: membersList.length,
              itemBuilder: (context, index) {
                return FamilyMembersContainer(member: membersList[index]);
              }
            ),
    );
  }
}