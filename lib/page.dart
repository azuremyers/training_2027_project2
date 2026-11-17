import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'states.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Team number: 2910')],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Match number: 4')],
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
                    Container(),
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