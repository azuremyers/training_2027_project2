import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_2027_project2/trackedmatchespage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(15.0),
          color: Colors.pink[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to ReefScape Scouting!'),
              ButtonToMatchPage(),
              ButtonToTrackedPage(),
            ],
          ),
        ),
      )
    );
  }
}

class ButtonToMatchPage extends StatelessWidget {
  const ButtonToMatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => context.go('/match'), child: Text('Track Match')),
        ],
      ),
    );
  }
}
