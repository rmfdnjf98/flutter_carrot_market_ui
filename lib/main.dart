import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/main_screens.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

void main() {
  runApp(CarrotMaketUI());
}

class CarrotMaketUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}
