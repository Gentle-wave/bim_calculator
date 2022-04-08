// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'constants.dart';


class Contchildren extends StatelessWidget {
    // ignore: use_key_in_widget_constructors
    Contchildren({ this.icon, this.label});
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
          style : klabeltextstyle,
        ),
      ],
    );
  }
}

