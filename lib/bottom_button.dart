// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';



class Buttombutton extends StatelessWidget {
  Buttombutton({required this.buttontitle, this.onTap});

  final String buttontitle;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttontitle,
            style: kLargebutton,
          ),
        ),
        color: kbottomcontainercolor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kbottomContainerheight,
      ),
    );
  }
}