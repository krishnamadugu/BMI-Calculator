import 'package:flutter/material.dart';
import '../screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0D22),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        textTheme: const TextTheme(
            bodyText2: TextStyle(
          color: Colors.white,
        )),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: const InputPage(),
      ),
    );
  }
}
