import 'package:flutter/material.dart';
import 'package:language_learning_app/models/family_members.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyMembersContainer extends StatelessWidget {
  const FamilyMembersContainer({super.key, required this.member});
  final FamilyMember member;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            color: Color(0xff558B37),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 100,
                      height: 120,
                      color: Color(0xfffff6dc),
                      child: Image.asset(member.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            member.jpName,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            member.enName,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(flex: 1),
                    IconButton(
                      padding: EdgeInsets.only(right: 25),
                      onPressed: (){
                        final player = AudioPlayer();
                        player.play(AssetSource(member.soundSource));
                      },
                      icon: Icon(
                        Icons.play_arrow,
                        size: 40,
                        color: Colors.white
                      )
                    )
                  ],
                ),
                Divider(
                  height: 0,
                  thickness: 2.3,
                  color: Color(0xFF306B1E ),
                ),
              ],
            ),
          );
  }
}