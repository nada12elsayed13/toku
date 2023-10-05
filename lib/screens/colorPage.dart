import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../components/number.dart';
import '../models/number.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {

    final List<Item> Colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori Ppoi Kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'yellow'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF49332A),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: Colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            numbers: Colors[index],
            color: const Color(0XFF7D40A2),
            itemType: 'colors' ,
          );
        },
      ),
    );
  }
}