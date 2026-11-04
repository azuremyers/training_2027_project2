import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.pink), // Theme
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('Reefscape Scouting')),
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
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('L1'),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('+1'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('-1'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('L2'),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('+1'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('-1'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('L3'),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('+1'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('-1'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.pink,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('L4'),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('+1'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('-1'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children:[
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          padding: const EdgeInsets.all(15.0),
                          color: Colors.pink,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Broke?'),
                              ]
                          )
                        ),
                      ],
                    )
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

class Format(

);