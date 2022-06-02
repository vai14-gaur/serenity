// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



//  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//             content: ErrorSnackBar(errorText: '',),
//             behavior: SnackBarBehavior.floating,
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//           ));



class ErrorSnackBar extends StatelessWidget {
  const ErrorSnackBar({
    Key? key, required this.errorText,
  }) : super(key: key);
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            padding: EdgeInsets.all(16),
            height: 90,
            decoration: BoxDecoration(
              color: Color(0xFFC72C41),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 48,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Oh snap!',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        errorText,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                            fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          left: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
              child: Image.asset(
                'assets/stain.png',
                height: 98,
                width: 50,
                color: Color(0xFF801336),
              ),
            )),

         
           
        Positioned(
            top: -25,
            
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/stain.png',
                    height: 48,
                    width: 30,
                    color: Color(0xFF801336),
                  ),
                  
                  
                ],
              ),
            )),
      ],
    );
  }
}
