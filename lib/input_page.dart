// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cont_children.dart';
import 'reuseable_card.dart';
import 'constants.dart';


enum Gender {
  male,
  female,
}

class Inputpage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<Inputpage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIM CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.male
                          ? kconttainercolor
                          : kactivecardcolor,
                      cardChild: Contchildren(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.female
                          ? kconttainercolor
                          : kactivecardcolor,
                      cardChild: Contchildren(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kactivecardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: klabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                       style: kothertextstyle,
                      ),
                      Text('cm',
                       style: klabeltextstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                     // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.00),
                      activeTrackColor:Color.fromARGB(255, 186, 87, 139),
                      thumbColor: Color.fromARGB(255,  186, 87, 139),
                    ),
                    child: Slider(value: height.toDouble(),
                    min : 120.0,
                    max : 220.0,
                   // activeColor: Color.fromARGB(255, 186, 87, 139),
                    inactiveColor: Colors.black12,
                     onChanged: (double newvalue) {
                       setState(() {
                          height = newvalue.round();
                       });
                     }
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                    cardChild:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: klabeltextstyle,
                        ),
                        Text(weight.toString(),
                        style: kothertextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           RoundIconButton(
                             icon:FontAwesomeIcons.plus,
                           ),
                              SizedBox( 
                                width: 10.00,
                              ),
                               RoundIconButton(
                                 icon: FontAwesomeIcons.minus,
                                 ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                   // cardChild:
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kbottomcontainercolor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomContainerheight,
          )
        ],
      ),
    );
  }
}




class RoundIconButton extends StatelessWidget {

    const RoundIconButton({required this.icon,}) ;

    final IconData icon;

    @override 
    Widget build(BuildContext context) {
      return RawMaterialButton(
        child: Icon(icon),
        onPressed: (){
        
        },
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