import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../components/number.dart';
import '../models/number.dart';

class FamelyPage extends StatefulWidget {
  const FamelyPage({super.key});

  @override
  State<FamelyPage> createState() => _FamelyPageState();
}

class _FamelyPageState extends State<FamelyPage> {
  final List<Item> familyMember = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'aughter'),
    Item(
        sound: 'grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofubo',
        enName: 'grand father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'mother'),
    Item(
        sound: 'grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grand mother'),
    Item(
        sound: 'older_bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'older bother'),
    Item(
        sound: 'older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'itoko',
        enName: 'son'),
    Item(
        sound: 'younger_brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'younger brohter'),
    Item(
        sound: 'younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'younger_sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF49332A),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context, index) {
          return ListItem(
            numbers: familyMember[index],
            color: const Color(0XFF5A9332),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
