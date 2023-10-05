import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../components/number.dart';
import '../models/number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  final List<Item> nums = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'yon',
        enName: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'nana',
        enName: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu',
        enName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF49332A),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return ListItem(
            numbers: nums[index],
            color: const Color(0XFFF99531),
            itemType: 'numbers',
          );
        },
      ),
    );
  }

  List<Widget> getlist(List<Item> Number) {
    List<Widget> listItem = [];
    for (int i = 0; i < Number.length; i++) {
      listItem.add(ListItem(
        numbers: Number[i],
        color: const Color(0XFFF99531),
        itemType: 'numbers',
      ));
    }
    return listItem;
  }
}
