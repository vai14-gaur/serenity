// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:serenity/widgets/app_text.dart';
import 'package:serenity/widgets/musicplaylist.dart';

import '../widgets/emoticon_face.dart';

class ChatSongPage extends StatelessWidget {
  const ChatSongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.deepPurple[400],
        elevation: 1,
        title: Center(
            child: AppText(
          text: 'JOY is here for you!',
          color: Colors.white,
          size: 20,
        )),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/botimage.png',
                width: 90,
              ),
              Text(
                '\t\t Heyy! How do you feel ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 28,
              )
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                   Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Songs()),
                          );
                },
                child: Column(
                  children: const [
                    EmoticonFace(emoji: '😔'),
                    SizedBox(height: 8),
                    Text(
                      'Badly',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                   Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Songs()),
                          );
                },
                child: Column(
                  children: const [
                    EmoticonFace(emoji: '☺️'),
                    SizedBox(height: 8),
                    Text(
                      'Fine',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                   Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Songs()),
                          );
                },
                child: Column(
                  children: const [
                    EmoticonFace(emoji: '😁'),
                    SizedBox(height: 8),
                    Text(
                      'Well',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                   Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Songs()),
                          );
                },
                child: Column(
                  children: const [
                    EmoticonFace(emoji: '🥳'),
                    SizedBox(height: 8),
                    Text(
                      'Excellent',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
              ),
           
            ],
          ),
           
      
             Image.asset('assets/sv.png', height: MediaQuery.of(context).size.height*.55,),
      
             Spacer()
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         //text should come here
      
          //         Padding(
          //           padding: const EdgeInsets.only(left: 7.0),
          //           child: Container(
          //             margin: EdgeInsets.symmetric(vertical: 30),
          //             padding:
          //                 EdgeInsets.symmetric(vertical: 5, horizontal: 29.5),
          //             width: MediaQuery.of(context).size.width * 0.79,
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.circular(29.5),
          //             ),
          //             child: TextField(
          //               decoration: InputDecoration(
          //                 hintText: 'Start your Conversation..',
          //                 border: InputBorder.none,
          //               ),
          //             ),
          //           ),
          //         ),
      
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             child: Icon(
          //               Icons.send_rounded,
          //               color: Colors.deepPurple[900],
          //               size: 45,
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
