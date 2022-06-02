// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

 ResponsiveButton({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: width,
      height: 50,
      decoration: BoxDecoration(color: Colors.deepPurple.shade900.withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
      ),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
         
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/arrow.png'),
              ),
        ],
      ),
    );
  }
}
