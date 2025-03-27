import 'package:flutter/material.dart';
import 'package:language_learning_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberContainer extends StatelessWidget {
  const NumberContainer({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            color: Color(0xffef9235),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 100,
                      height: 120,
                      color: Color(0xfffff6dc),
                      child: Image.asset(number.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            number.jpName,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            number.enName,
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
                        player.play(AssetSource(number.soundSource));
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
                  thickness: 4,
                  color: Color(0xffA67C52),
                ),
              ],
            ),
          );
  }
}