// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_this


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serenity/pages/moodsdb.dart';

import 'package:serenity/pages/profile_page.dart';
import 'package:serenity/widgets/app_large_text.dart';

import 'package:serenity/widgets/card.dart';
import 'package:serenity/widgets/side_nav.dart';

import '../controller/mood_controller.dart';
import '../read data/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  final _moodController = Get.put(MoodController());
  

  //document IDs
  //List<String> docIds = [];

  //get docIDs
  // Future getDocId() async {
  //   await FirebaseFirestore.instance
  //       .collection('user')
  //       .get()
  //       .then((snapshot) => snapshot.docs.forEach((document) {

  //             docIds.add(document.reference.id);
  //           }));
  // }


  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(
      //       user!.email!,
      //       style: TextStyle(
      //         fontSize: 16,
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     GestureDetector(
      //       onTap: (() {
      //         FirebaseAuth.instance.signOut();
      //       }

      //       ),
      //        child: Icon(Icons.logout),
      //     ),
      //   ],
      // ),

      body: Stack(
        children: [
          Container(
            height: size.height * .55,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/cloud.png')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SideNav()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2BEA1),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/Menu.png',
                          ),
                        )),
      
      
                  
      
      
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()),
                        );
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5)),
                        child: Image.asset(
                          'assets/avatar.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      
              SizedBox(height: 15),
      //${loggedInUser.name}
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello ",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Let's explore all the features here",
                              style: GoogleFonts.nunito(textStyle: 
                              TextStyle(color: Colors.grey[700], 
                              fontWeight: FontWeight.w600, fontSize: 16))),

                              SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
              ),
      
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0),
              //   child: Container(
              //     margin: EdgeInsets.symmetric(vertical: 30),
              //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 29.5),
              //     width: size.width * 0.88,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(29.5),
              //     ),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         icon: Icon(
              //           Icons.search_rounded,
              //           color: Colors.grey[400],
              //           size: 40,
              //         ),
              //         hintText: 'Search',
              //         border: InputBorder.none,
              //       ),
              //     ),
              //   ),
              // ),
      
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: GridView.count(
                    childAspectRatio: 0.85,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: <Widget>[
                      CardView(
                        title: 'Diet Recommendation',
                        imgsrc: 'assets/img6.jpg',
                        
                        press: () {},
                      ),
                      CardView(
                          imgsrc: 'assets/discuss.png',
                          title: 'Talk with Friends',
                          press: () {}),
                      CardView(
                          imgsrc: 'assets/meditation_bg.png',
                          title: 'Meditation',
                          press: () {}),
                      CardView(
                          imgsrc: 'assets/outing.png',
                          title: 'Outing',
                          press: () {}),
                    ],
                  ),
                ),
              ),

                Padding(
                        padding: const EdgeInsets.only(top:20.0, left: 15),
                        child: AppLargeText(text: 'Mood Tracker', size: 25,),
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
                      
                        child: InkWell(
                           onTap: (){ 
                                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Moods()),
                        );
                                  
                                  _moodController.getMoods();
                                  },
   
                          child: Row( 
                            children: [ 
                              Image.asset('assets/thumbnail.png'),
                              Expanded(child: 
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               
                                children: [ 
                                  Text('How was your mood ?', style: TextStyle( 
                                     
                                    fontWeight: FontWeight.w700,
                                              
                                  ),),
                                  Text('Save your progress here!', style: TextStyle( 
                                     
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
  
      
             
      
      
              // Expanded(
              //   child: FutureBuilder(
              //     future: getDocId(),
              //     builder: (context, snapshot) {
              //       return ListView.builder(
              //           itemCount: docIds.length,
              //           itemBuilder: (context, index) {
              //             return ListTile(
              //               title: GetUserDetails(documentId: docIds[index]),
              //             );
              //           });
              //     },
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
