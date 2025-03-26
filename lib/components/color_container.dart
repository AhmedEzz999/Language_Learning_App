import 'package:flutter/material.dart';
import 'package:language_learning_app/models/color.dart';
import 'package:audioplayers/audioplayers.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({super.key, required this.color});
  final ColorItem color;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            color: Color(0xff79359F),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 100,
                      height: 120,
                      color: Color(0xfffff6dc),
                      child: Image.asset(color.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            color.jpName,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            color.enName,
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
                        player.play(AssetSource(color.soundSource));
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
                  color: Color(0xD1B5A9A4),
                ),
              ],
            ),
          );
  }
}