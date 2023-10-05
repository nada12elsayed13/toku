import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.numbers,
      required this.color,
      required this.itemType});
  final Item numbers;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0XFFFFF6DC),
              child: Image.asset(numbers.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbers.jpName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  numbers.enName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(numbers.sound);
                  } catch (ex) {
                    print('sound failed');
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}

class Phrases extends StatelessWidget {
  const Phrases({super.key, required this.color, required this.phrase,required this.itemType});

  final Color color;
  final Item phrase;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase.jpName,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    phrase.enName,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
            Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                  onPressed: () {
                    try {
                      AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$itemType/');
                      player.play(phrase.sound);
                    } catch (ex) {
                      print('sound failed');
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
        
        ],
      ),
    );
  }
}
