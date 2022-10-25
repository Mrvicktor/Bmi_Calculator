import 'package:flutter/material.dart';
import '../screen/Buttom_Button_Page.dart';
import '../screen/reuseable_card.dart';
import '../component/calculate_brain.dart';

import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interPretaion})
      : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interPretaion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'YOUR RESULT',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    bmiResult.toUpperCase(),
                    style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    interPretaion,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              ButtonTitle: 'CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
