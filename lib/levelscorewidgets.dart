import 'package:flutter/material.dart';

class BrokeSwitch extends State<StatefulWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeThumbColor: Colors.blue[900],
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}

class LevelScoreWidget extends StatefulWidget {
  final String levelNumber;

  const LevelScoreWidget(this.levelNumber, {super.key});

  @override
  State<LevelScoreWidget> createState() {
    return _LevelScoreWidgetState();
  }
}

class _LevelScoreWidgetState extends State<LevelScoreWidget> {
  int score = 0;

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
      padding: const EdgeInsets.all(13.0),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.levelNumber}: $score'),
          ElevatedButton(onPressed: increment, child: const Text('+1')),
          ElevatedButton(onPressed: decrement, child: const Text('-1')),
        ],
      ),
    );
  }
}
