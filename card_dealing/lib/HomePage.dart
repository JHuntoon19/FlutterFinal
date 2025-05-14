import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "dart:math";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String title = "Card Dealing App";
  final String cBackImage = "imgaes/Cards/CBack.png";
  int cardsDealt = 0;
  List<int> cardsDealtIDArr = [];
  List<Expanded> cardChildrenArr = [];
  Widget build(BuildContext context) {
    void createCardChildren() {
      setState(() {
        cardChildrenArr = [
          ...cardChildrenArr,
          Expanded(
              child: Container(
            padding: EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: SafeArea(
                        child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset('imgaes/Cards/CardPics/C' +
                      cardsDealtIDArr.last.toString() +
                      ".png"),
                )))
              ],
            ),
          ))
        ];
      });
    }

    void dealCard() {
      setState(() {
        if (cardsDealt < 52) {
          cardsDealt++;
          int cardID = Random().nextInt(52) + 1;
          cardsDealtIDArr = [...cardsDealtIDArr, cardID];
        } else {
          print("ALl cards drawn already");
        }
        createCardChildren();
        print(cardsDealt);
      });
    }
  void shuffleCards(){
      setState(() {
        cardsDealt = 0;
        cardsDealtIDArr = [];
        cardChildrenArr = [];
      });
  }
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: "Battambang",
                  color: Colors.deepPurple[50],
                  fontSize: 35.0,
                  letterSpacing: 1.5,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.deepPurple[900],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: cardChildrenArr,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.asset(cBackImage),
                      ))), //The back of the deck
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        dealCard();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple[900],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                  color: Colors.deepPurple.shade100,
                                  width: 2))),
                      child: Text(
                        "Deal",
                        style: TextStyle(
                          fontFamily: "Battambang",
                          color: Colors.deepPurple[50],
                        ),
                      )),
                  TextButton(
                    onPressed: () {
                      shuffleCards();
                      print("Shuffle");
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.deepPurple.shade100,
                            width: 2,
                          )),
                    ),
                    child: Text(
                      "Shuffle",
                      style: TextStyle(
                          fontFamily: "Battambang",
                          color: Colors.deepPurple[50]),
                    ),
                  )
                ],
              ), //Holds the deal and shuffle buttons
            ],
          ),
        ));
  }
}
