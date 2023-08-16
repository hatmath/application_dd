
// Projet:  Laboratoire_3, application_dd, projet flutter 
// Codeurs: Mathieu Hatin
// Cours : Apps multi (420-324-AH)

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const AppDD());
}

class AppDD extends StatelessWidget {
  void _onPressedIcon(String text) {
    print("Le bouton $text a été appuyé");
  }

  void generateRandomNumber(int min, int max) {
    final random = Random();
    print(min + random.nextInt(max - min + 1));
  }

  const AppDD({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Laboratoire 3, 1ère app Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Application D&D",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            actions: [
              IconButton(
                  onPressed: () => {_onPressedIcon("Dice")},
                  icon: const Icon(Icons.casino)),
              IconButton(
                  onPressed: () => {_onPressedIcon("Person")},
                  icon: const Icon(Icons.person)),
              IconButton(
                  onPressed: () => {_onPressedIcon("Action")},
                  icon: const Icon(Icons.list)),
            ],
            backgroundColor: Colors.black,
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 4)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d4",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 6)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d6",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 8)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d8",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 10)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d10",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 12)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d12",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 20)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d20",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () => {generateRandomNumber(1, 100)},
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "d100",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                ),
              ],
            ),
          ),
        ));
  }
}
