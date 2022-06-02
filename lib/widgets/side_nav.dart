// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serenity/pages/settings_page.dart';

class SideNav extends StatelessWidget {
  SideNav({Key? key}) : super(key: key);

  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(350),
          bottomRight: Radius.circular(350),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Drawer(
            backgroundColor: Colors.grey,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    color: Colors.white,
                    child: Container(
                      color: Colors.deepPurpleAccent,
                      child: ClipPath(
                        clipper: Wave(),
                        child: Container(
                          height: 140,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 25,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 70,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            margin: const EdgeInsets.only(
                              bottom: 50,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                color: Colors.black54,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                          onTap: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.pop(context);
                          },
                          child: listItem(Icons.logout_rounded, "Log Out",
                              Colors.deepPurple.shade200)),
                      InkWell(

                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingsPage()),
                          );
                        },
                        child: listItem(Icons.settings_rounded, "Settings",
                            Colors.deepPurple.shade200),
                      ),
                      listItem(Icons.people, "Feedback",
                          Colors.deepPurple.shade200),
                      listItem(Icons.rule_folder_rounded, "Terms & Conditions",
                          Colors.deepPurple.shade200),
                      Image.asset(
                        'assets/thumbnail.png',
                        height: 270,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listItem(IconData icon, String label, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
            ),
            child: Center(
              child: Icon(
                icon,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            label,
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class Wave extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width, 0);

    var point1 = Offset(size.width, size.height * 0.2);
    var point2 = Offset(size.width - 18, size.height * 0.35);

    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);

    var point3 = Offset(size.width - 35, size.height * 0.5);
    var point4 = Offset(size.width - 18, size.height * 0.65);

    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);

    var point5 = Offset(size.width, size.height * 0.8);
    var point6 = Offset(size.width, size.height);

    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
