// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cont_children.dart';
import 'reuseable_card.dart';

const kbottomContainerheight = 60.00;
const kactivecardcolor = Color.fromARGB(172, 115, 139, 156);
const kconttainercolor = Colors.blueGrey;

class Inputpage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIM CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                    cardChild: Contchildren(icon: FontAwesomeIcons.mars, label: 'MALE',),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                  cardChild:Contchildren(icon: FontAwesomeIcons.venus, label: 'FEMALE',
                  ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kactivecardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kactivecardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kconttainercolor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbottomContainerheight,
          )
        ],
      ),
    );
  }
}


