import 'package:card_dealing/HomePage.dart';
import 'package:flutter/material.dart';
void main ( )=> runApp(CardDealingApp());
class CardDealingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.deepPurple,
      ),
      title: "CardDealingApp",
      home: HomePage()
    );
  }
}