import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'trackedmatchespage.dart';
import 'mainpage.dart';
import 'matchpage.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.pink), // Theme
        ),
        home: MaterialApp.router(routerConfig: _router),
      ),
    ),
  );
}

final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => MainPage(),
      ),
      GoRoute(
        path: '/match',
        builder: (context, state) => MatchPage(),
      ),
      GoRoute(
        path: '/tracked',
        builder: (context, state) => TrackedMatchesPage(),
      )
    ]
);
