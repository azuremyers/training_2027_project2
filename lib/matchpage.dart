import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'levelscorewidgets.dart';

class MatchPage extends ConsumerWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(15.0),
          color: Colors.blue[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Enter team number'),
                      Text('Enter match number'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      LevelScoreWidget('L1'),
                      LevelScoreWidget('L2'),
                      LevelScoreWidget('L3'),
                      LevelScoreWidget('L4'),
                    ],
                  ),
                  Column(
                    children: [
                      LevelScoreWidget('Miss L1'),
                      LevelScoreWidget('Miss L2'),
                      LevelScoreWidget('Miss L3'),
                      LevelScoreWidget('Miss L4'),
                    ],
                  ),
                  Column(
                    children: [
                      LevelScoreWidget('Algae in net'),
                      LevelScoreWidget('Penalties'),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(29.0),
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Broke?'),
                            BrokeSwitch(),
                          ],
                        ),
                      ),
                      ButtonToMainPage(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonToMainPage extends StatelessWidget {
  const ButtonToMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => context.go('/'), child: Text('Done')),
        ],
      ),
    );
  }
}

class MatchTextField extends StatelessWidget {
  final String hint;

  const MatchTextField(this.hint, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: InputDecoration(
          hintText: '$hint: ',
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          Text('Entered: $value');
        },
      ),
    );
  }
}
