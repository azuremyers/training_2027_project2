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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Match Number: 1')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    LevelScoreWidget(),
                    LevelScoreWidget(),
                    LevelScoreWidget(),
                    LevelScoreWidget(),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Broke?'),
                          BrokeSwitch().build(context),
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
