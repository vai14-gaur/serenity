// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String imgsrc;
  final String title;
  final Function press;

  const CardView({
    Key? key,
    required this.imgsrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -30,
            color: Colors.deepPurple.shade800,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press(),
          child: Column(
            children: [
                Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              
              Image.asset(imgsrc),
             
            
            ],
          ),
        ),
      ),
    );
  }
}
