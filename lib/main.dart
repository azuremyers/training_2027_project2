import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Format.dart';

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
              child: FormatState(),
          ),
        ),
      ),
    ),
  );
}

class Format(

);