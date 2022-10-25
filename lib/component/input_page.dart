import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/Buttom_Button_Page.dart';
import '../screen/icon_content.dart';
import 'package:bmicalculator/component/results_page.dart';
import '../screen/reuseable_card.dart';
import 'calculate_brain.dart';

const ActiveCardColour = Color(0xFF1D1E33);
const InActiveCardColour = Color(0xFF111328);

enum Gender { male, female }

int height = 180;
int weight = 75;
int age = 60;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male
                          ? ActiveCardColour
                          : InActiveCardColour,
                      childCard: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
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
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? ActiveCardColour
                          : InActiveCardColour,
                      childCard: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReusableCard(
                  colour: ActiveCardColour,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Text(
                            'CM',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white38),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0)),
                        child: Slider(
                          value: height.toDouble(),
                          min: 50,
                          max: 220,
                          inactiveColor: Colors.white38,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: ActiveCardColour,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.minus),
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                textStyle: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.plus),
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: ActiveCardColour,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.minus),
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                textStyle: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(FontAwesomeIcons.plus),
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          BottomButton(
              ButtonTitle: 'CALCULATE',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(weight: weight, height: height);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        resultText: calc.getResult(),
                        interPretaion: calc.getInterpretation(),
                        bmiResult: calc.calculateBMI(),
                      ),
                    ));
              }),
        ],
      ),
    );
  }
}
