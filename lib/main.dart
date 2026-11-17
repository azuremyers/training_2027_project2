import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'page.dart';

void main() {


  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.pink), // Theme
        ),
        home: MainPage(),
      )
    ),
  );
}
