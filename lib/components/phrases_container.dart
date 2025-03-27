import 'package:flutter/material.dart';
import 'package:language_learning_app/models/phrase.dart';
import 'package:audioplayers/audioplayers.dart';

class PhraseContainer extends StatelessWidget {
  const PhraseContainer({super.key, required this.phrase});
  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.only(top: 20,bottom: 20, left: 10),
            margin: EdgeInsets.only(bottom: 7),
            color: Color(0xFF50ADC7),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        phrase.jpName,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        phrase.enName,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  padding: EdgeInsets.only(right: 25),
                  onPressed: (){
                    final player = AudioPlayer();
                    player.play(AssetSource(phrase.soundSource));
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: Colors.white
                  )
                )
              ],
            ),
          );
  }
}