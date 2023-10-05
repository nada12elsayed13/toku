import 'package:flutter/material.dart';

class Catogry extends StatelessWidget {
  
  Catogry({this.text, this.color,this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        color: color,
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
