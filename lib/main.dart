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
                  children: [Text('Team number: 2910')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Match number: 4')],
                ),
                ToggleMode(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class Toggle extends Notifier<bool> {
  @override
  bool build() => false;

  void mode() {
    state = !state;
  }
}

final toggleProvider = NotifierProvider<Toggle, bool>(Toggle.new);

class ToggleMode extends ConsumerWidget {
  const ToggleMode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggle = ref.watch(toggleProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dark Mode: $toggle'),
        ElevatedButton(
          onPressed: () {
            ref.read(toggleProvider.notifier).mode();
          },
          child: const Text('Change Mode'),
        ),
      ],
    );
  }
}
