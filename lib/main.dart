import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.yellow), // Theme
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Reefscape Scouting')),
        body: const Center(
          child:
          Column(
            children: [
              Center(
          child: Row(
                children: [
                  Text('Team number: 2910'),
                  Text('Team name: Jack in the Bot'),
                ]
              ),
              ),
              Row(
                  children: [
                    Text('Match number: 4'),
                  ]
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
