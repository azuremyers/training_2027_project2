import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.yellow), // Theme
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('Reefscape Scouting')),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Team number: 2910'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Match number: 4')],
                ),
                Row(
                  children: [
                    Column(
                      Container(
                        margin: const EdgeInsets.all(20.0),

                      )
                    ),
                    Column(

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
