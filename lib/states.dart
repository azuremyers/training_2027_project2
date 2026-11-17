import 'package:flutter/material.dart';


class BrokeSwitch extends State<StatefulWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeThumbColor: Colors.pink[100],
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}

class LevelScoreWidget extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return LevelScore(0);
  }

}

class LevelScore extends State<StatefulWidget> {
  int score = 0;
  int levelNumber = 0;

  LevelScore(int level) {
    levelNumber = level;
  }

  void increment() {
    setState(() {
      score++;
    });
  }

  void decrement() {
    setState(() {
      score--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(15.0),
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('L$levelNumber: $score'),
          ElevatedButton(
            onPressed: increment,
            child: const Text('+1'),
          ),
          ElevatedButton(
            onPressed: decrement,
            child: const Text('-1'),
          ),
        ],
      ),
    );
  }
}