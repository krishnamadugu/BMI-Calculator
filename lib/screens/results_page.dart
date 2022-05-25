import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  String result;
  String bmiResult;
  String feedback;

  ResultPage(this.result, this.bmiResult, this.feedback);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0D22),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "Your Result",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  const Color(0xFF1D1F33),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFF22E37A),
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: const TextStyle(
                          fontSize: 100.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        feedback,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(() {
                Navigator.pop(context);
              }, "RE-CALCULATE"),
            ],
          ),
        ),
      ),
    );
  }
}
