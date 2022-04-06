// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

const labeltextstyle =  TextStyle(
            fontSize: 18.0,
            color: Colors.white70,
);

class Contchildren extends StatelessWidget {
   const Contchildren({ this.icon, this.label});
  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
         icon,
          size: 80.0,
          color: Color.fromARGB(255, 186, 87, 139),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!, 
          style:labeltextstyle,
        ),
      ],
    );
  }
}