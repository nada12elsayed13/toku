import 'package:flutter/material.dart';
import 'package:toku/screens/colorPage.dart';
import 'package:toku/screens/family_memper.dart';
import 'package:toku/screens/numberPage.dart';
import 'package:toku/screens/phrasses.dart';

import '../components/catogery.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0XFF49332A),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Catogry(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumberPage();
              }),
              );
            },
            text: 'Numbers',
            color: const Color(0XFFF99531),
          ),
          Catogry(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamelyPage();
              }),
              );
            },
            text: 'Family Members ',
            color: const Color(0XFF5A9332),
          ),
          Catogry(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorPage();
              }),
              );
            } ,
            text: 'Colors',
            color: const Color(0XFF7D40A2),
          ),
          Catogry(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrassePage();
              }),
              );
            },
            text: 'Phrases',
            color: const Color(0XFF47A5CB),
          ),
        ],
      ),
    );
  }
}
