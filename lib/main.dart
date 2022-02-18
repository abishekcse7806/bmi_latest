import 'package:bmi_latest/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMI());
}

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF047104)),
        primaryColor: const Color(0xFFE1BEE7),
        scaffoldBackgroundColor: Colors.green,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
      ),
      home: const MainPage(),
    );
  }
}

///Abishek
