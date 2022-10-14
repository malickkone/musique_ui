// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class UsefullWidget extends StatelessWidget {
  
final myChild;

  const UsefullWidget({super.key, this.myChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
        child: myChild,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              offset:  Offset(5,5),
              color: Colors.blueGrey,
              blurRadius: 10
            ),
            BoxShadow(
              offset: Offset(-5,-5),
              color: Colors.white,
              blurRadius: 10
            ),
          ]
        ),
      );
  }
}