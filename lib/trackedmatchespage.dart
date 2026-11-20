import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'matchpage.dart';

class TrackedMatchesPage extends StatelessWidget {
  const TrackedMatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(15.0),
          color: Colors.purple[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonToMainPage()
            ],
          ),
        ),
      ),
    );
  }
}



class ButtonToTrackedPage extends StatelessWidget {
  const ButtonToTrackedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.go('/tracked'),
            child: Text('View Tracked Matches'),
          ),
        ],
      ),
    );
  }
}
