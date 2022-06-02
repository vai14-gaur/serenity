// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:serenity/auth/main_page.dart';
import 'package:serenity/widgets/app_large_text.dart';
import 'package:serenity/widgets/app_text.dart';
import 'package:serenity/widgets/responsive_button.dart';

class Launch extends StatefulWidget {
  const Launch({Key? key}) : super(key: key);

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  List images = [
    'img3.png',
    'img1.png',
    'img2.png',
  ];

  List descp = [ 
    'Mental health is something that we all need to talk about & take good care of it!!!',
    'Don\'t wait to get easier , be stronger!!!',
    'Hope is a powerful thing. Some say it’s a different breed of magic altogether.', 
  ];

  int _currentPage = 0;
  late Timer _timer;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            pageSnapping: true,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    image: AssetImage('assets/' + images[index]),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 150,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          AppLargeText(text: 'Serenity'),
                          AppText(
                            text: 'Mental health ',
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 250,
                            child: AppText(
                              text: descp[index],
                              size: 16,
                              color: Color(0xFF878593),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()),
                              );
                            },
                            child: ResponsiveButton(
                              width: 130,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.deepPurple.shade900.withOpacity(0.8)
                                  : Colors.grey.withOpacity(0.5),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
