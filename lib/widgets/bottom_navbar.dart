// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:serenity/pages/advise_page.dart';
import 'package:serenity/pages/chat_page.dart';
import 'package:serenity/pages/home_page.dart';
// import 'package:serenity/pages/location_page.dart';
import 'package:serenity/pages/task_page.dart';




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // int _currentIndex = 0;

  List pages = [
    // LocatePage(),
    AdvisePage(),
    HomePage(),
    ChatSongPage(),
    TaskPage(),
  ];

  int currentIndex = 1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          
          onTap: onTap,
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          selectedItemColor: Colors.deepPurple[700],
          unselectedItemColor: Colors.deepPurple.shade200.withOpacity(0.9),
          elevation: 0,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // BottomNavigationBarItem(
            //   label: 'Locate',
            //   icon: Icon(Icons.location_history_sharp),
            // ),
            BottomNavigationBarItem(
              label: 'Blogs',
              icon: Icon(Icons.search_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: Icon(Icons.dialpad_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.mark_chat_unread_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Tasks',
              icon: Icon(Icons.task_alt_sharp),
            ),
          ],
        ));
  }
}


//     return  NavigationBarTheme(
    //   data: NavigationBarThemeData(
    //     indicatorColor: Colors.deepPurple.withOpacity(0.5),
    //     labelTextStyle: MaterialStateProperty.all(
    //       const TextStyle(
    //         fontSize: 12,
    //         fontWeight: FontWeight.w700,
    //       ),
    //     ),
    //   ),
    //   child: NavigationBar(
    //     height: 60,
    //     labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    //     animationDuration: const Duration(seconds: 1),
    //     selectedIndex: _currentIndex,
    //     onDestinationSelected: (int newIndex) {
    //       setState(() {
    //         _currentIndex = newIndex;
    //       });
    //     },
    //     destinations: [
    //       NavigationDestination(
    //           selectedIcon: GestureDetector(
    //             onTap: () {
    //               Navigator.push(context,
    //                   MaterialPageRoute(builder: (context) => HomePage()));
    //             },
    //             child: Icon(
    //               Icons.home,
    //               color: Colors.white.withOpacity(0.5),
    //             ),
    //           ),
    //           icon: const Icon(
    //             Icons.home_outlined,
    //             color: Colors.deepPurple,
    //           ),
    //           label: 'home'),
    //       NavigationDestination(
    //           selectedIcon: GestureDetector(
    //             onTap: () {
    //               Navigator.push(context,
    //                   MaterialPageRoute(builder: (context) => ProfilePage()));
    //             },
    //             child: Icon(
    //               Icons.person,
    //               color: Colors.white.withOpacity(0.5),
    //             ),
    //           ),
    //           icon: const Icon(
    //             Icons.person_outlined,
    //             color: Colors.deepPurple,
    //           ),
    //           label: 'profile'),
    //       NavigationDestination(
    //           selectedIcon: Icon(
    //             Icons.location_on,
    //             color: Colors.white.withOpacity(0.5),
    //           ),
    //           icon: const Icon(
    //             Icons.location_on_outlined,
    //             color: Colors.deepPurple,
    //           ),
    //           label: 'locate'),
    //       NavigationDestination(
    //           selectedIcon: Icon(
    //             Icons.mark_chat_unread,
    //             color: Colors.white.withOpacity(0.5),
    //           ),
    //           icon: const Icon(Icons.mark_chat_unread_outlined,
    //               color: Colors.deepPurple),
    //           label: 'chat'),
    //     ],
    //   ),
    // );