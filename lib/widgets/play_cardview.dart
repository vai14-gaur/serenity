// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PlayCardView extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function press;

  const PlayCardView({
    Key? key,
    required this.sessionNum,
    this.isDone = false, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        //padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: Colors.grey.withOpacity(0.5),
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? Colors.deepPurple : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.deepPurple.shade300,
                      ),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : Colors.deepPurple.shade300,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Session s$sessionNum',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
