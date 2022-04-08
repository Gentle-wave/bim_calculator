// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BIMcalcalculator());

class BIMcalcalculator extends StatelessWidget {
  const BIMcalcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ).copyWith(
          secondary: Colors.white,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black87),
        ),
        fontFamily: 'Georgia',
      ),
      // primaryColor: Color(0xff90868A),
      home: Inputpage(),
    );
  }
}

