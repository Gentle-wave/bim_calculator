// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:bim_calculator/bottom_button.dart';
import 'package:bim_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Results extends StatelessWidget {
   Results({required this.bmiResult,required this.interpretation,required this.results});


  final String bmiResult;
  final String results;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('BIM CALCULATOR'),
      ),
      // ignore: prefer_const_constructors
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: const Text(
                'YOUR RESULT',
                style: ktitle,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReuseableCard(
            colour: kactivecardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  results.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: kresult,
                ),
                Text(
                  bmiResult,
                  textAlign: TextAlign.center,
                  style: kBMIstyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                   interpretation,
                    textAlign: TextAlign.center,
                    style: kbodytext,
                  ),
                ),
              ],
            ),
          ),
        ),
        Buttombutton(
          buttontitle: 'RE-CALCULATE',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ]),
    );
  }
}
