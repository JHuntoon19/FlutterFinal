import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  final String title = "Card Dealing App";
  @override
  Widget build(BuildContext context) {
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
                children: [
                  TextButton(
                      onPressed: () {
                        print("Deal");
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
                      style: TextStyle(fontFamily: "Battambang", color: Colors.deepPurple[50]),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
