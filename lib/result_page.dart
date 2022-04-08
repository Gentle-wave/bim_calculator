import 'package:bim_calculator/bottom_button.dart';
import 'package:bim_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

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
              children: const [
                Text(
                  'NORMAL',
                  textAlign: TextAlign.center,
                  style: kresult,
                ),
                Text(
                  '18.3',
                  textAlign: TextAlign.center,
                  style: kBMIstyle,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Your BMI result is low, you should eat more',
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
