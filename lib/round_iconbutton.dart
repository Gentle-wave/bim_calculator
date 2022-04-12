// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onpressed});

  final IconData icon;
  void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 3.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 186, 87, 139),
    );
  }
}
