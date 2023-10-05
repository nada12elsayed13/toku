import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../components/number.dart';
import '../models/number.dart';

class PhrassePage extends StatefulWidget {
  const PhrassePage({super.key});

  @override
  State<PhrassePage> createState() => _PhrassePageState();
}

class _PhrassePageState extends State<PhrassePage> {
  final List<Item> Phrasses = const [
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kodoku Suru Koto O Wasurenaide Kudasai',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'Watashi Wa Purogramingu daiskidesu',
        enName: 'i love programming'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu Wa Kantandesu',
        enName: 'programming is easy'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'where are you going'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Namea Wa nandesu ka',
        enName: 'what is your name ?'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling'),
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai watashi wa kite imasu',
        enName: 'yes im coming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF49332A),
          title: const Text('Colors'),
        ),
        body: ListView.builder(
          itemCount: Phrasses.length,
          itemBuilder: (context, index) {
            return Phrases(
              phrase: Phrasses[index],
              color: const Color(0XFF47A5CB),
              itemType: 'phrases',
            );
          },
        ),);
  }
}
