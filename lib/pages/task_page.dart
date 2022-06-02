// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:serenity/pages/motivationpage.dart';
import 'package:serenity/widgets/app_large_text.dart';
import 'package:serenity/widgets/play_cardview.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * .52,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.45),
                    image: DecorationImage(
                      image: AssetImage('assets/meditation_bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          'Meditation',
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '3-10 MIN Course',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Mental health problems don’t define\nwho you are...You walk in the rain\nand you feel the rain, but\nyou are not the rain',
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                        ),
      
                          Padding(
                        padding: const EdgeInsets.only(left:3.0),
                        child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 30),
                                  padding:
                                      EdgeInsets.symmetric(vertical: 3, horizontal: 25.5),
                                  width: size.width * 0.58,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(29.5),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.search_rounded,
                                        color: Colors.grey[400],
                                        size: 40,
                                      ),
                                      hintText: 'Search',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                      ),
      
      
                      Wrap( 
                        // ignore: prefer_const_literals_to_create_immutables
                        spacing: 20,
                        runSpacing: 20,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [ 
                          PlayCardView(sessionNum: 1,
                          isDone: false,
                          press: (){},
                          ),
      
                          PlayCardView(sessionNum: 2,
                          isDone: true,
                           press: (){},
                          ),
                          PlayCardView(sessionNum: 3,
                          isDone: false,
                           press: (){},
                          ),
      
                          PlayCardView(sessionNum: 4,
                          isDone: false,
                           press: (){},
                          ),
                          PlayCardView(sessionNum: 5,
                          isDone: false,
                           press: (){},
                          ),
      
                          PlayCardView(sessionNum: 6,
                          isDone: false,
                           press: (){},
                          ),
                        ],
                      ),
      
      
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: AppLargeText(text: 'Meditation', size: 25,),
                      ),
      
                      Container( 
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(18),
                        height:100,
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
                          ]
                      
                        ),
                      
                        child: Row( 
                          children: [ 
                            Image.asset('assets/thumbnail.png'),
                            Expanded(child: 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [ 
                                Text('Basic 2', style: TextStyle( 
                                   
                                  fontWeight: FontWeight.w700,
                      
                                ),),
                                Text('Start your sessions now!', style: TextStyle( 
                                   
                                  fontWeight: FontWeight.w400,
                      
                                ),),

                               
                              ], 
                      
                            )),
                             Padding(padding: EdgeInsets.all(20),
                                child: Icon(Icons.lock_clock_outlined,
                                color: Colors.grey.shade400, size: 30,),
                                ),
                      
                          ],
                        ),
                      ),

                       Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: AppLargeText(text: 'Motivation', size: 25,),
                      ),

                      
                      InkWell(
                        onTap: (){ 
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Motive()),
                        );
                                  
                        },
                        child: Container( 
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(18),
                          height:100,
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
                            ]
                        
                          ),
                        
                          child: Row( 
                            children: [ 
                              Image.asset('assets/thumbnail.png'),
                              Expanded(child: 
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [ 
                                  Text('Quotes', style: TextStyle( 
                                     
                                    fontWeight: FontWeight.w700,
                        
                                  ),),
                                  Text('Motivational quotes for you!', style: TextStyle( 
                                     
                                    fontWeight: FontWeight.w400,
                        
                                  ),),
                      
                                 
                                ], 
                        
                              )),
                               Padding(padding: EdgeInsets.all(20),
                                  child: Icon(Icons.lock_clock_outlined,
                                  color: Colors.grey.shade400, size: 30,),
                                  ),
                        
                            ],
                          ),
                        ),
                      ),
      
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

