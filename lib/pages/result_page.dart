import 'package:bmi_latest/constants.dart';
import 'package:bmi_latest/custom_widgets/bottom_button.dart';
import 'package:bmi_latest/custom_widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.bmiResult,
    required this.bmiValue,
    required this.suggestions,
    required this.bmiTextColor,
  }) : super(key: key);

  final String bmiResult;
  final String bmiValue;
  final String suggestions;
  final Color bmiTextColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Your Result',
              textAlign: TextAlign.center,
              style: kNumberTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: const Color(0xFF272A4E),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 30,
                        color: bmiTextColor,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiValue,
                      style: const TextStyle(fontSize: 80, color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      suggestions,
                      style: TextStyle(
                        fontSize: 20,
                        color: bmiTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              bottomButtonLabel: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
