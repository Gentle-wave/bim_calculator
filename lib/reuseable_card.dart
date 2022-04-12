// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
